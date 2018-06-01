class BooksController < ApplicationController
  def index
    # @books = Book.where.not(latitude: nil, longitude: nil)

    if params[:query].present? && Book.where.not(latitude: nil, longitude: nil)
        @books = Book.global_search(params[:query])
    else
        @books = Book.all
    end

    @markers = @books.map do |book|
      {
        lat: book.latitude,
        lng: book.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end


  def show
    @book = Book.find(params[:id])
    @booking = Booking.new

    @marker = [
      {
        lat: @book.latitude,
        lng: @book.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    ]
  end

  def mybooks
    @books = Book.where(user: current_user).page(params[:page]).per(8)
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user

    if @book.save
      #redirect_to book_path(@book)
      redirect_to books_path
    else
      render :new
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :summary, :address,:price ,:picture, :category)
  end
end

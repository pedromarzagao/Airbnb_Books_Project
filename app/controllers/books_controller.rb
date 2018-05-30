class BooksController < ApplicationController
  def index
    # @books = Book.where.not(latitude: nil, longitude: nil)

    if params[:query].present?
        @books = Book.global_search(params[:query]) && Book.where.not(latitude: nil, longitude: nil)
    else
        @books = Book.all && Book.where.not(latitude: nil, longitude: nil)
    end

    @markers = @books.map do |book|
      {
        lat: book.latitude,
        lng: book.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def new
    @book = Book.new()
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

  def show
    @book = Book.find(params[:id])
  end

  private

  def book_params
    params.require(:book).permit(:title, :summary, :address, :picture, :category)
  end
end

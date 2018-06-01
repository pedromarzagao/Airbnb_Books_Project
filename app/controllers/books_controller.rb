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

  def mybooks
    @books = Book.where(user: current_user).page(params[:page]).per(9)
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

  def show
    @book = Book.find(params[:id])
    @booking = Booking.new

    ##########################################
    #1 Add an eventListener on the input box begin- and enddate
    #const booking_start = document.getElementById('booking_date_begin').value;


    #2 Get their values
    #3 Parse them in correct format to compute their difference
    #4 Store their difference in an instance variable
    #5 Question: how to pass it to the Booking Controller




    # input_date = document.getElementById(‘booking_date_begin’).value
    # end_date = document.getElementById(‘booking_date_end').value

    # then you get a ration:
    # Date.strptime('03-02-2001', ‘%d-%m-%Y')

    # still need for .to_i => to round to the numbers of days



  end

  private

  def book_params
    params.require(:book).permit(:title, :summary, :address,:price ,:picture, :category)
  end
end

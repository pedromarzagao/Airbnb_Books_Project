class BookingsController < ApplicationController
  before_action :set_book, except: [:index]

  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
    if params[:id] == nil
      @booking = Booking.find(params[:id])
      # @booking = Booking.where(@booking.user = current_user)
    else
      @book = Book.find(params[:book_id])
      @booking = Booking.find(params[:id])
    end
  end

  def new
    @booking = Booking.new
  end

  def create

    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.book = @book
    @booking.rating = 0
    if @booking.save
      redirect_to book_booking_path(params[:book_id], @booking)
    else
      redirect_to @book
    end
  end

  private

  def set_book
    @book = Book.find(params[:book_id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :book_id,:date_begin, :date_end)
  end
end




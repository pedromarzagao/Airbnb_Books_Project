class BookingsController < ApplicationController
  before_action :set_book

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.book = @book

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private

  def set_book
    @book = Book.find(params[:book_id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :book_id)
  end
end




class BookingsController < ApplicationController
  before_action :set_book, except: [:index]
  before_action :set_booking, only: [:edit]

  def index

    # if params[:query].present?
        @search = Booking.where(user: current_user).ransack(params[:q])
        @bookings = @search.result.includes(:book)
        @booking_reviewed = Booking.where(user:current_user,review:nil)
        # @search.build_condition
    # else
    #     @bookings = Booking.where(user: current_user)
    # end


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

  def edit
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to bookings_path
    end
  end

  private

  def set_book
    @book = Book.find(params[:book_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :book_id,:date_begin, :date_end, :review, :rating)
  end
end




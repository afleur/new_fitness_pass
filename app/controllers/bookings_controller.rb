class BookingsController < ApplicationController
  # skip_before_action :authenticate_user!

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @session = Session.find(params[:session_id])
    @booking = Booking.new
    @booking.session = @session
    @booking.user = current_user
  end

  def create
    @booking = Booking.new
    @session = Session.find(params[:session_id])
    @booking.user = current_user
    @booking.session = @session
    if @booking.save
      redirect_to confirmation_path(@booking)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def confirmation
    @booking = Booking.find(params[:booking_id])
  end
end

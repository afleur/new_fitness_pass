class BookingsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @booking = Booking.find(params[:id])
  end

  def show
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @session = Session.find(params[:session_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.session = @session
    if @booking.save
      redirect_to session_booking_path(@session, @booking), notice: 'Votre session est réservée.'
    else
      redirect_to session_path(@session), alert: 'Pb'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def booking_params
  end
end

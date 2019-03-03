require 'time'

class BookingsController < ApplicationController
  # skip_before_action :authenticate_user!

  def index
    @pastbookings = []
    @comingbookings = []
    @bookings = Booking.all
    @bookings.each do |booking|
      if booking.activity.start_time > Time.now
        @comingbookings << booking
      else
        @pastbookings << booking
      end
  end

  def show
    @booking = Booking.find(params[:booking_id])
  end

  def new
    @activity = Activity.find(params[:activity_id])
    @booking = Booking.new
    @booking.activity = @activity
    @booking.user = current_user
  end

  def create
    @booking = Booking.new
    @activity = Activity.find(params[:activity_id])
    @booking.user = current_user
    @booking.activity = @activity
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
end

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
        @comingbookings = @comingbookings.sort_by { |booking| booking.activity.start_time }
      else
        @pastbookings << booking
        @pastbookings = (@pastbookings.sort_by { |booking| booking.activity.start_time }).reverse
      end
    end
  end

  def show
    @booking = Booking.find(params[:id])
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
    if (current_user.credits_amount -= @activity.course.credits_cost) >= 0
      if @booking.save
        Credit.create!(value: - @activity.course.credits_cost, user: @booking.user, course: @activity.course)
        current_user.save
        redirect_to confirmation_path(@booking)
      else
        render :new
      end
    else
      flash.now[:alert] = "Vous n'avez pas assez de crédits"
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

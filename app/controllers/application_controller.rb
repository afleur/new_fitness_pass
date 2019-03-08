class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :bookingscount

  def bookingscount
    @comingbookings = []
    @bookings = Booking.all
    @bookings.each do |booking|
      if booking.activity.start_time > Time.now
        @comingbookings << booking
        @bookingscount = @comingbookings.count
      end
    end
    @bookingscount ||= 0
    return @bookingscount
  end

end

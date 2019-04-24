class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :bookingscount
  include Pundit

  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

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

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

end

class PagesController < ApplicationController
  skip_before_action :authenticate_user!

   #only: [:home]

  def home
  end

  def coach_home
    @courses_of_current_coach = []
    @activities_of_current_coach = []
    @comingactivities = []
    @pastactivities = []
    @nb_of_bookings = []
    @coach = current_coach
    @courses = Course.all
    @bookings = Booking.all
    if @coach.nil?
      return nil
    else
      @courses_of_current_coach << @courses.select { |course| course.coach_id == current_coach.id }
      @activities = Activity.all
      @activities.each do |activity|
        @courses_of_current_coach.each do |course|
          course.each do |x|
            if x.id == activity.course_id
              @activities_of_current_coach << activity
            end
          end
        end
      end
      @activities_of_current_coach.each do |activity|
        if activity.start_time > Time.now
          @comingactivities << activity
        else
          @pastactivities << activity
        end
    end
      @nb_of_bookings = @bookings.select { |booking| booking.activity_id == @comingactivities[0].id }
  end
end
end

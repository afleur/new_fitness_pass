class PagesController < ApplicationController
  skip_before_action :authenticate_user!

   #only: [:home]

  def home
  end

  def coach_home
    @coach = current_coach
    courses = Course.all
    @coach.nil? ? "": @courses_of_current_coach =  courses.select { |course| course.coach_id == @coach.id }
    @activities = Activity.all
    @activities.select {|activity| activity.course_id == @courses_of_current_coach.id}
  end
end


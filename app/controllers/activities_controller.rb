class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    if params[:query].present?
      @activities = Activity.global_search(params[:query])
    elsif params[:category].present?
      p @activities = Activity.joins(:course).where("courses.category = ? AND courses.city = ?", params[:category], params[:city])
    elsif params[:city].present?
      @activities = Activity.joins(:course).where("courses.city = ?", params[:city])
    else
      @activities = Activity.all
    end
    today = Date.today
    @activitiesdayone = @activities.where(start_time: today.beginning_of_day..today.end_of_day).sort_by { |activity| activity.start_time }
    @activitiesdaytwo = @activities.where(start_time: (today + 1).beginning_of_day..(today + 1).end_of_day).sort_by { |activity| activity.start_time }
    @activitiesdaythree = @activities.where(start_time: (today + 2).beginning_of_day..(today + 2).end_of_day).sort_by { |activity| activity.start_time }
    @activitiesdayfour  = @activities.where(start_time: (today + 3).beginning_of_day..(today + 3).end_of_day).sort_by { |activity| activity.start_time }
    @activitiesdayfive  = @activities.where(start_time: (today + 4).beginning_of_day..(today + 4).end_of_day).sort_by { |activity| activity.start_time }
    @activitiesdaysix   = @activities.where(start_time: (today + 5).beginning_of_day..(today + 5).end_of_day).sort_by { |activity| activity.start_time }
    @activitiesdayseven = @activities.where(start_time: (today + 6).beginning_of_day..(today + 6).end_of_day).sort_by { |activity| activity.start_time }
    @markers = @activities.map do |activity|
      {
        lng: activity.course.longitude,
        lat: activity.course.latitude
      }
    end
  end

  def show
    @activity = Activity.find(params[:id])
    @course = @activity.course
    @markers =
      [{
        lng: @course.longitude,
        lat: @course.latitude
      }]
  end

  def create
  end

  def new
  end

  def destroy
  end

  def update
  end

  def edit
  end
end

class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    if params[:query].blank?
      @activities = Activity.all
    elsif params[:category].present?
      @activities = Activity.joins(:course).where("courses.category = ?", params[:category])
    else
      @activities = Activity.global_search(params[:query])
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

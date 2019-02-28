class SessionsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    if params[:category].present?

      @sessions = Session.joins(:course).where("courses.category = ?", params[:category])
    else
      @sessions = Session.all
    end
  end

  def show
    @session = Session.find(params[:id])
    @course = @session.course
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

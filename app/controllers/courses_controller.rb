class CoursesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
  end

  def show
    @course = Course.find(params[:id])
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def new
  end
end

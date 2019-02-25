class SessionsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @sessions = Session.All
    @courses = Course.find(params session.id)

  def show
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

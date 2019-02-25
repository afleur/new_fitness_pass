class SessionsController < ApplicationController
  def index
    @sessions = Session.all
  end

  def show
    @session = Session.find(params[:id])
  end

  def new
  end

  def create
  end

  def destroy
  end

  def update
  end

  def edit
  end
end

class OrdersController < ApplicationController
  def index
    @user = current_user
  end

  def show
  end

  def new
  end

  def create
    @course = Course.find(params[:course_id])
    @order = Order.create!(date: Time.now, course: @course.name, amount: @course.credits_cost, state: 'pending', user: current_user)

    redirect_to new_order_payment_path(order)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def credit
  end
end

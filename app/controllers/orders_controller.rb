class OrdersController < ApplicationController
  def index
    @user = current_user
  end

  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
  end

  def new
    @credit = Credit.new ()
    @credit.save
  end

  def create
    @order = Order.create!(amount: 200, state: 'pending')

    redirect_to new_order_payment_path(@order)
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

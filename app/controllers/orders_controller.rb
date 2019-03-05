class OrdersController < ApplicationController
  def index
    @user = current_user
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @credit = Credit.new()
    @credit.save
  end

  def create
    raise
    @amount
    @order = Order.new(amount: 200, state: 'pending')

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

class OrdersController < ApplicationController
  def index
    @user = current_user
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
  end

  def create
    @order = Order.create(amount_cents: params[:value], state: 'pending')
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

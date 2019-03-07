class PaymentsController < ApplicationController
  before_action :set_order

  def new
    credits_value = {
    10000 => 10,
    20000 => 22,
    30000 => 34
  }
  @credits_val = credits_value[@order.amount_cents]
  end

  def create
    customer = Stripe::Customer.create(
    source: params[:stripeToken],
    email:  params[:stripeEmail]
  )

  charge = Stripe::Charge.create(
    customer:     customer.id, # You should store this customer id and re-use it.
    amount:       @order.amount_cents,
    description:  "Paiement pour #{@order.amount_cents} for order #{@order.id}",
    currency:     @order.amount.currency
  )

  @order.update(payment: charge.to_json, state: 'paid')

  credits_value = {
    10000 => 10,
    20000 => 22,
    30000 => 34
  }

  @credit = Credit.create(user: current_user, value: credits_value[@order.amount_cents], order_id: @order.id)
  current_user.credits_amount += credits_value[@order.amount_cents]
  current_user.save
  redirect_to allorders_path

rescue Stripe::CardError => e
  flash[:alert] = e.message
  redirect_to new_order_payment_path(@order)
  end

  private

  def set_order
    @order = Order.find(params[:order_id])
  end
end

class OrdersController < ApplicationController
  before_action :authenticate_user!

  def new
    @product = Product.find(params[:product_id])

    #Setting a stripe session
    Stripe.api_key = Rails.application.credentials.dig(:stripe, :secret_key)
    @session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [{
    name: @product.name,
    description: "by #{@product.name}",
    images: [@product.picture],
    amount: (@product.price * 100).to_i,
    currency: 'aud',
    quantity: 1,
    }],
    success_url: 'http://localhost:3000/orders/complete',
    cancel_url: 'https://code-turnip.herokuapp.com/orders/cancel',
    )
  end

  # cancelling order on the stripe website redirects to this route
  # handle this by redirecting to the root
  def cancel
    redirect_to root_path
  end
end

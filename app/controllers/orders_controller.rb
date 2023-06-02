class OrdersController < ApplicationController

  def create
    @order = Order.new(order_params)
    @product = Product.find(params[:product_id])
    @order.product = @product
    @order.user = current_user
    if @order.save
      redirect_to order_path(@order)
    else
      redirect_to product_path(@product), status: :unprocessable_entity
    end
  end

  def my_sales
    products = Product.where(user: current_user)
    @orders = Order.where(product: products)
  end

  def show
    @order = Order.find(params[:id])
  end

  def my_orders
    @orders = Order.where(user: current_user)
  end

  private

  def order_params
    params.require(:order).permit(:quantity)
  end
end

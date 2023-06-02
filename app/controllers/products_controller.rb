class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def my_products
    @products = Product.where(user: current_user)
  end

  def index
    @products = Product.where(active: true)
    @products = Product.all
      if params[:query].present?
        sql_subquery = "name ILIKE :query OR description ILIKE :query"
        @products = @products.where(sql_subquery, query: "%#{params[:query]}%")
      end
      if params[:category].present?
        @products = @products.where(category: params[:category])
      end
  end

  def show
    @product = Product.find(params[:id])
    @order = Order.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to products_path
    else
      render "new", status: :unprocessable_entity
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    # @product_attachments = @product.photos

    # if product_params[:photos].present?
    if @product.update(product_params)
      redirect_to product_path, notice: "Product was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
    # else
    #   # @product_attachments.each do |attachment|
    #   #   @product.photos.attach(attachment)
    #   # end
    #   if @product.update(product_params.reject { |k| k["photos"] })
    #     redirect_to product_path, notice: "Product was successfully updated."
    #   end
    # end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.user == current_user
      @product.destroy
      redirect_to products_path
    else
      redirect_to product_path(@product), notice: "You don't autorization for this"
    end
  end

  private

  def product_params
    params.require(:product).permit(:active, :name, :description, :stock, :category, :price, :product_url).merge(photos: [])
  end
end

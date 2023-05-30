class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
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
    if @product.update(product_params)
      redirect_to product_path, notice: "Product was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    # if @product.user == current_user
    # @product = Product.find(params[:id])
    # @product.destroy
    # redirect_to product_path
    #else
     # redirect_to product_path, notice: "You don't autorization for this"
    #end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :stock, :category, :price, :product_url)
  end
end

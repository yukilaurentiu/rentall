class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to product_path(@product), status: :see_other, notice: "You successfully updated the product: #{@product.title}"
    end
  end

  def destroy
    if @product.destroy
      redirect_to products_path, status: :see_other, notice: "You successfully deleted the product: #{@product.title}"
    end
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :category, :price, :photo, :address)
  end
  def set_product
    @product = Product.find(params[:id])
  end
end

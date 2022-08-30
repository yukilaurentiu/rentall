class ProductsController < ApplicationController
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
    #TODO
  end

  def edit
    #TODO
  end

  def update
    #TODO
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      redirect_to products_path, status: :see_other, notice: "You successfully deleted the product: #{@product.title}"
    end
  end
end

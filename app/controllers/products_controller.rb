class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    #TODO
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
    #TODO
  end
end

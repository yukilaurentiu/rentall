class BookingsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @booking = Booking.new
  end

  def create
    @product = Product.find(params[:product_id])
    @booking = Booking.new(bookmark_params)
    @booking.list = @product
    if @booking.list = @list
      redirect_to product_path(@product), status: :see_other, notice: "You successfully booked the product: #{@product.title}"
    else
      redirect_to :new
    end
  end
end

class BookingsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @booking = Booking.new
  end

  def create
    @product = Product.find(params[:product_id])
    @booking = Booking.new(booking_params)
    @booking.product = @product
    if @booking.save
      redirect_to product_path(@product), status: :see_other, notice: "You successfully booked the product: #{@product.title}"
    else
      redirect_to product_path(@product)
    end
  end

  def index
    @bookings = Booking.all
  end

  def show
    @bookings = Booking.all
  end

  def booking_params
    params.require(:booking).permit(:comment, :start_date, :end_date)
  end

end

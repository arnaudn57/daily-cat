class ReservationsController < ApplicationController
  def index
    @product = Product.find(params[:cat_id])
    @reservations = Reservation.all
  end

  def new
    @product = Product.find(params[:product_id])
    @reservation = Reservation.new
  end

  def create
    @product = Product.find(params[:product_id])
    @reservation = Reservation.new(product: @product)
    @reservation.cat = current_cat
    if @reservation.save
      redirect_to_products_path
    else
      render :new
    end
  end
end

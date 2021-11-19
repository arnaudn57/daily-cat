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
      redirect_to products_path
    else
      render :new
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to dashboard_index_path
  end
end

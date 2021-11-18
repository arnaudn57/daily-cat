class ReservationsController < ApplicationController
  # def show
  #   @reservation = Reservation.find(params[:product_id])
  # end
  def new
    @product = Product.find(params[:product_id])
    @reservation = Reservation.new
  end

  # def create
  #   @reservation = Reservation.create(params[:product_id])
  # end

end

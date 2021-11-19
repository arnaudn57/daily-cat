class DashboardController < ApplicationController
  def index
    @products = current_cat.products
    @reservations = @products.map(&:reservation).select {|res| !res.nil?}
  end
end

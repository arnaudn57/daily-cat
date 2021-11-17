class ProductsController < ApplicationController
  def index
    if params[:product][:category].present?
      @products = Product.where(category: params[:product][:category])
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
    @cat = Cat.find(@product.cat_id)
    @markers = [{
      lat: @cat.latitude,
      lng: @cat.longitude
      }]
  end
end

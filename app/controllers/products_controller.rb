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
  end
end

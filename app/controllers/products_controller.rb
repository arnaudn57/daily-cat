class ProductsController < ApplicationController
  def index
    if params.dig(:product, :category).nil?
      @products = Product.all
    else
      @products = Product.where(category: params[:product][:category])
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end

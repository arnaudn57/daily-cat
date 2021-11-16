class ProductsController < ApplicationController
  def index
    if params[:product][:category].present?
      @products = Product.where(category: params[:product][:category])
    elsif params[:product][:title].present?
      @products = Product.where(category: params[:product][:title])
    else
      @products = Product.all
    end
  def show
    @product = Product.find(params[:id])
  end
end

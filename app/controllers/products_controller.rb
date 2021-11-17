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
    @cat = Cat.find(@product.cat_id)
    @markers = [{
      lat: @cat.latitude,
      lng: @cat.longitude
      }]
  end

  def new
    if cat_signed_in?
      @product = Product.new
    else
      redirect_to new_cat_registration_path
    end
  end

  def create
    @product = Product.new(product_params)
    @product.cat = current_cat
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price, :category, :cat_id, :image)
  end
end

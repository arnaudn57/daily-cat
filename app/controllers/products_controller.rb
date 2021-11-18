class ProductsController < ApplicationController
  def index
    query = params[:category] +' '+ params[:title] +' '+params[:address]
    if !query.blank?
      @products = Product.search_global(query)
    else
      @products = Product.all
    end
    # if params[:category].present? && params[:title].present?
    #   category = Product.search_by_category(params[:category])
    #   @products = category.search_by_title(params[:title])
    # elsif params[:category].present?
    #   @products = Product.search_by_category(params[:category])
    # elsif params[:title].present?
    #   @products = Product.search_by_title(params[:title])
    # else
    #   @products = Product.all
    # end
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

class ProductsController < ApplicationController


  def index
    @products = Product.all
  end


  def show
    @product = Product.find(params[:id])
  end


  def add_to_cart
    @product = Product.find(params[:id])
    current_user.add_product_to_cart(@product)
    redirect_to :back
    flash[:notice] = "add to cart"
  end























end

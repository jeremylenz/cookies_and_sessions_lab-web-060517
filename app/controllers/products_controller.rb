class ProductsController < ApplicationController
  def index
    @current_cart = self.cart
  end

  def add
    self.cart ||= []
  end

  def create
    self.cart << params[:product]
    redirect_to products_path
  end


end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :initialize_cart

  def cart
    session[:cart] ||= []
    session[:cart]
  end

  def cart=(items)
    session[:cart] = items
  end

  def initialize_cart
    session[:cart] ||= []
  end

end

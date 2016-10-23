class Admin::ProductsController < ApplicationController
  layout "admin_template"

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end
end

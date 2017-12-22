class ProductsController < ApplicationController
  def index
    products = Products.all
    render plain: products.description
  end

end

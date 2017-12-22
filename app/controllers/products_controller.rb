class ProductsController < ApplicationController
 before_action :set_product ,only: [:show,:edit,:update,:destroy]

  def index
    @products = Product.all
  end

  def description
    product = Product.find(params[:id])
    render plain: product.description
  end

  def show
  end

  def new
      @product = Product.new
  end

  def create
    @product = Product.create (product_params)
    @product.save
    redirect_to product_path (@product)
  end

  def edit
  end

  def update
    @product.update(product_params)
    redirect_to product_path (@product)
   end

  private

def set_product
  @product = Product.find(params[:id])
end
def product_params
     params.require(:product).permit(
     :name,
     :description,
     :price,
     :inventory)
   end
end

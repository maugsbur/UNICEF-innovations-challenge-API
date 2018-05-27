class ProductsController < ApplicationController

  def index
    render json: { data: Product.all.to_json }
  end
end

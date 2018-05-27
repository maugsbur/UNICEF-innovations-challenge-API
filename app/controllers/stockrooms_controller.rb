class StockroomsController < ApplicationController

  def index
    render json: { data: Stockroom.all.to_json }
  end
end

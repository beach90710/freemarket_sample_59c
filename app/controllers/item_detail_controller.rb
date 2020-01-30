class ItemDetailController < ApplicationController
  def index
  end

  def show
    @item = item.find(params[:id])
    @item = item.name(params[:id])
  end

end

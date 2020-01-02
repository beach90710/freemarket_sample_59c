class ItemsController < ApplicationController

  def index
    @item = Item.includes(:images).order("created_at DESC").limit(10)
  end

end

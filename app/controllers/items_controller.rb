class ItemsController < ApplicationController

  def index
    @new_items = Item.includes(:images).order("created_at DESC").limit(10)
  end

end

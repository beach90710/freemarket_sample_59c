class ItemsController < ApplicationController

  def index
    @new_items = Item.includes(:images).order("created_at DESC").limit(10)
  end
  
  def new
    @item = Item.new
    3.times{ @item.images.build }
  end
  
  def create
    Item.create!(item_params)
    # binding.pry
  end
  
  private
  
  def item_params
    params.require(:item).permit(:name,:conditon,:detail,:price,:shipping_charge_fee,:shipping_method,:shipping_origin,:days_to_shipping,:brand_id,:category_id,:user_id,:image)
  end

end

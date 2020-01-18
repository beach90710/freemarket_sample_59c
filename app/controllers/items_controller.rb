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
  end

  def edit
    @edit_item = Item.find(params[:id])
  end

  def update
    edit_item = Item.find(params[:id])
    edit_item.update(item_params)
  end

  private
  
  def item_params
    params.require(:item).permit(:id,:name,:conditon,:detail,:price,:shipping_charge_fee,:shipping_method,:shipping_origin,:days_to_shipping,:brand_id,:category_id,:user_id,:status,images_attributes:[:image,:id]).merge(user_id: 1)
  end

end

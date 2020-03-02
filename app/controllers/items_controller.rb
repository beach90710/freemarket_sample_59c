class ItemsController < ApplicationController

  def index
    @new_items = Item.includes(:images).order("created_at DESC").limit(10).where(status: "出品中")
  end
  
  def new
    @item = Item.new
    10.times{ @item.images.build }
  end
  
  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to action:'index',notice: '商品を出品しました'
    else
      redirect_to action: 'new'
    end
  end

  def show
    @item = Item.find(params[:id])
  end
  
  def edit
    @edit_item = Item.find(params[:id])
  end

  def update
    edit_item = Item.find(params[:id])
      if edit_item.update(item_params) 
        redirect_to action:'index', notice:'編集しました'
      else
        redirect_to action: 'edit', notice:'編集できませんでした'
      end
  end
  
  def destroy
    item = Item.find(params[:id])
      if item.user_id == current_user.id && item.destroy
        redirect_to items_path notice:'削除できました'
      else
        redirect_to items_path notice:'削除できませんでした'
      end
  end


  def pay
    @item = Item.find(params[:id])
    Payjp.api_key = ENV['PAY_JP_ACCESS_KEY']
    charge = Payjp::Charge.create(
    amount: @item.price,
    card: params['payjp-token'],
    currency: 'jpy'
    )
    @item.update(status: "売り切れ")
    redirect_to action: 'done'
  end

  def done
  end

  private
  
  def item_params
    params.require(:item).permit(:id,:name,:conditon,:detail,:price,:shipping_charge_fee,:shipping_method,:shipping_origin,:days_to_shipping,:brand_id,:category_id,:status,images_attributes:[:image,:id]).merge(user_id: current_user.id)
  end

end

class TransactionController < ApplicationController

  def buy
    @item = Item.find(params[:id])
  end

end

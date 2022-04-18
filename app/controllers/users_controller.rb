class UsersController < ApplicationController
  def cart
    @items = []
    if params[:item_id].present?
      params[:item_id].each do |item_id|
        item = Item.find(item_id)
        @items << item
      end
    end
  end

  def thanks

  end
end

class UsersController < ApplicationController
  def cart
    items = Item.all
    @items = []
    items.each do |item|
      item_details = []
      if params[item.id.to_s].present?
        quantity = params[item.id.to_s]
        item_details << item
        item_details << quantity
        @items << item_details
      end
    end

    @total = 3
    @items.each do |item|
      if item[1].to_i == 0
        @error = "Invalid"
      end
      cost = item[0].price * item[1].to_i
      @total = @total + cost
    end
  end

  def thanks

  end
end

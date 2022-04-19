class ItemsController < ApplicationController
  
  def index
    @items = Item.all

    @meals = Item.where(status: "meal")
    @snacks = Item.where(status: "snack")
    @drinks = Item.where(status: "drink")
  end
end

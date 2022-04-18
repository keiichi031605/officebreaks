class ItemsController < ApplicationController
  
  def index
    @items = Item.all
    # @current_user = User.find(params[:id])
    puts "###" * 100
    puts params
    puts "###" * 100
  end
end

class HomeController < ApplicationController
  
  def index
    #@users = User.all
    @inventories = InventoryList.all.collect(&:name)
    respond_to do |format|
      format.html # index.html.haml
    end
  end

end

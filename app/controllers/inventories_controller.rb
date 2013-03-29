class InventoriesController < ApplicationController
  
  def index
    respond_to do |format|
      format.html # index.html.haml 
    end
  end
  
  def list
    #@inventories = InventoryList.find(:all)
    @inventories = ["Device", "Book", "Laptop", "Other Inventories"]
    respond_to do |format|
      format.html # list.html.haml 
    end
  end

end

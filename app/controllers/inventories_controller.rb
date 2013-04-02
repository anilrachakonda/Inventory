class InventoriesController < ApplicationController

  before_filter :login_required
  
  def index
    respond_to do |format|
      format.html # index.html.haml 
    end
  end
  
  def list
    @inventories = InventoryList.all.collect(&:name)
    respond_to do |format|
      format.html # list.html.haml 
    end
  end

end

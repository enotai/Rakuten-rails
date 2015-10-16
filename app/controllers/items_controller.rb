class ItemsController < ApplicationController
  def index
    if RWS::Ichiba::Item.search(keyword: params[:keyword]) then
    @items = RWS::Ichiba::Item.
        search(keyword: params[:keyword], imageFlag: 1).first(10)
    else
      @items = 'Not Found'
    end
  end
end

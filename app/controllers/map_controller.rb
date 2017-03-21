class MapController < ApplicationController

  $ward = [["中央区"],["灘区"],["東灘区"],["兵庫区"],["長田区"],["須磨区"],["西区"],["北区"]]
  def index
    @serch_form = Shop.new params[:address]
    if params[:shop].nil?
      serch_ward = "中央区"
    else
      serch_ward = params[:shop][:address]
    end
    @shop = Shop.where("address = '#{serch_ward}'")
  end

  def new
    @shop = Shop.new
    puts $ward 
    @genre = Genre.select("genre")
  end

  def create
    shop = Shop.new(shop_add)
    shop.save
    redirect_to(:action => "index")
  end
  private
  def shop_add
     params.require(:shop).permit(:name,:address,:praice,:genre)
  end
end

class ShelvesController < ApplicationController

	def create
	    @shop = Shop.find(params[:shop_id])
        @shelf = @shop.shelves.create(shelf_params)
        redirect_to(shop_path(@shop))
    end

    def destroy
        @shop = Shop.find(params[:shop_id])
        @shelf = Shelf.find(params[:id])

        @shelf.candies.each do |candy|
          candy.is_shelved = false
        end
        @shelf.destroy
        
        redirect_to(shop_path(@shop))
    end

    def shelf_params
      params.require(:shelf).permit(:name)
    end
end

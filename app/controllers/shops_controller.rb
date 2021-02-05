class ShopsController < ApplicationController
    def index
        @shops = Shop.all
        @shop_new = Shop.new
    end

    def about
    end


    def show
        index()

        @shop = Shop.find(params[:id])
        @candy = Candy.new
        @shelf = Shelf.new
        @unshelved_candies = @shop.candies.unshelved_candies
    end

    def create
	    @shops = Shop.all
        @shop_new = Shop.new(shop_params)
        if @shop_new.save
            redirect_to(shop_path(@shop_new))
        else
            render('index')
        end
    end

    def shop_params
        params.require(:shop).permit(:name)
    end
end

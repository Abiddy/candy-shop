class CandiesController < ApplicationController
    def create
        @shop = Shop.find(params[:shop_id])
        @candy = @shop.candies.create(candy_params)
        redirect_to(shop_path(@shop))
    end
   
      
   
   def update
        @shop = Shop.find(params[:shop_id])
        @candy = Candy.find(params[:id])
        if(params[:shelf_action]=="add")
            shelf = Shelf.find(params[:candy][:shelf_id])
            @candy.update(:is_shelved => true, :shelf => shelf)           
        elsif (params[:shelf_action]=="delete")
            @candy.update(:is_shelved => false, :shelf => nil)
       end
       
       redirect_to(shop_path(@shop))    
   end
   

    def destroy
        @shop = Shop.find(params[:shop_id])
        @candy = Candy.find(params[:id])
        @candy.destroy
        flash[:message] = "Candy deleted."
        redirect_to(shop_path(@shop))
    end

    def candy_params
        params.require(:candy).permit(:name)
    end
end

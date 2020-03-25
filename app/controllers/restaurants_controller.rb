class RestaurantsController < ApplicationController
    def index
        @restaurants = Restaurant.all
    end 

    def show
        @restaurant = Restaurant.find(params[:id])
    end 

    def new
        @restaurant = Restaurant.new
    end

    # def edit
    # end

    def create
        # render plain: params[:restaurant].inspect

        @restaurant = Restaurant.create(restaurant_params)
        
        if @restaurant.save
            redirect_to @restaurant
        else 
            render 'new'
        end 
    end 

    # def update
    # end

    # def destroy
    # end

    private
        def restaurant_params
            params.require(:restaurant).permit(:name, :address, :phone, :website)
        end
end 
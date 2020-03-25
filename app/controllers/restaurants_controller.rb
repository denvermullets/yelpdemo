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

    def edit
        @restaurant = Restaurant.find(params[:id])
    end

    def create
        # render plain: params[:restaurant].inspect

        @restaurant = Restaurant.create(restaurant_params)
        
        if @restaurant.save
            redirect_to @restaurant
        else 
            render 'new'
        end 
    end 

    def update
        @restaurant = Restaurant.find(params[:id])

        if @restaurant.update(restaurant_params)
            redirect_to @restaurant
        else 
            render 'edit'
        end
    end

    # def destroy
    # end

    private
        def restaurant_params
            params.require(:restaurant).permit(:name, :address, :phone, :website)
        end
end 
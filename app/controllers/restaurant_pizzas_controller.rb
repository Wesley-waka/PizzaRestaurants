class RestaurantPizzasController < ApplicationController
    
    def create
        pizza = Pizza.find_by(id: params[:pizza_id])
        restaurant = Restaurant.find_by(id: params[:restaurant_id])
        if restaurant
        render json: restaurant.as_json(
            include: { pizzas: { only: [:id, :name, :ingredients] } }
        ), status: :ok,status: :created
        else
        render json:{errors: ["validation errors"]},status: :unprocessable_entity
        end
    end

    private

    def restaurant_pizzas_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end

end

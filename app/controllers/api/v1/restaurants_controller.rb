# frozen_string_literal: true

module Api
  module V1
    class RestaurantsController < ApplicationController
      before_action :set_restaurant, only: %i[show update destroy]

      # GET /restaurants
      def index
        @restaurants = Restaurant.includes(:categories, :allergies).all

        render json: @restaurants.as_json(include: { categories: {}, allergies: {} })
      end

      # GET /restaurants/1
      def show
        render json: @restaurant
      end

      # POST /restaurants
      def create
        @restaurant = Restaurant.new(restaurant_params)

        if @restaurant.save
          render json: @restaurant, status: :created, location: @restaurant
        else
          render json: @restaurant.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /restaurants/1
      def update
        if @restaurant.update(restaurant_params)
          render json: @restaurant
        else
          render json: @restaurant.errors, status: :unprocessable_entity
        end
      end

      # DELETE /restaurants/1
      def destroy
        @restaurant.destroy!
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_restaurant
        @restaurant = Restaurant.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def restaurant_params
        params.require(:restaurant).permit(:slug, :name, :description, :address, :eye_catch_image,
                                           :cover_image, :min_order_amount)
      end
    end
  end
end

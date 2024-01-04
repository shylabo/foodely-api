# frozen_string_literal: true

module Api
  module V1
    class MenuItemsController < ApplicationController
      before_action :set_menu_item, only: %i[show update destroy]

      # GET /menu_items
      def index
        @menu_items = MenuItem.includes(:allergies).all

        render json: @menu_items.as_json(include: { allergies: {} })
      end

      # GET /menu_items/1
      def show
        render json: @menu_item.as_json(include: { allergies: {} })
      end

      # POST /menu_items
      def create
        @menu_item = MenuItem.new(menu_item_params)

        if @menu_item.save
          render json: @menu_item, status: :created, location: @menu_item
        else
          render json: @menu_item.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /menu_items/1
      def update
        if @menu_item.update(menu_item_params)
          render json: @menu_item
        else
          render json: @menu_item.errors, status: :unprocessable_entity
        end
      end

      # DELETE /menu_items/1
      def destroy
        @menu_item.destroy!
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_menu_item
        @menu_item = MenuItem.includes(:allergies).find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def menu_item_params
        params.require(:menu_item).permit(:name, :description, :eye_catch_image, :price,
                                          :restaurant_id)
      end
    end
  end
end

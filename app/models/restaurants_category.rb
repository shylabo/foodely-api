# frozen_string_literal: true

class RestaurantsCategory < ApplicationRecord
  belongs_to :restaurant
  belongs_to :category
end

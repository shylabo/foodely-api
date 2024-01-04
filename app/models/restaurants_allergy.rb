# frozen_string_literal: true

class RestaurantsAllergy < ApplicationRecord
  belongs_to :restaurant
  belongs_to :allergy
end

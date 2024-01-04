# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :restaurants_categories
  has_many :restaurants, through: :restaurants_categories
end

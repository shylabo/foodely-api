# frozen_string_literal: true

class Restaurant < ApplicationRecord
  has_many :restaurants_categories, dependent: :destroy
  has_many :categories, through: :restaurants_categories

  has_many :restaurants_allergies, dependent: :destroy
  has_many :allergies, through: :restaurants_allergies

  has_many :menu_items, dependent: :destroy
end

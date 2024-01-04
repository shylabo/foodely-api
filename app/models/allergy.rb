# frozen_string_literal: true

class Allergy < ApplicationRecord
  has_many :restaurants_allergies, dependent: :destroy
  has_many :restaurants, through: :restaurants_allergies

  has_many :menu_items_allergies, dependent: :destroy
  has_many :menu_items, through: :menu_items_allergies
end

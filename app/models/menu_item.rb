# frozen_string_literal: true

class MenuItem < ApplicationRecord
  has_many :menu_items_allergies, dependent: :destroy
  has_many :allergies, through: :menu_items_allergies

  belongs_to :restaurant
end

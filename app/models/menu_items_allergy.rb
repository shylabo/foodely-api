# frozen_string_literal: true

class MenuItemsAllergy < ApplicationRecord
  belongs_to :menu_item
  belongs_to :allergy
end

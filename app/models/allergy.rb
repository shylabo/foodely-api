class Allergy < ApplicationRecord
  has_many :restaurants_allergies
  has_many :restaurants, through: :restaurants_allergies
end

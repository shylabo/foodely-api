class CreateRestaurantsAllergies < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants_allergies, id: false do |t|
      t.belongs_to :restaurant
      t.belongs_to :allergy
      t.timestamps
    end

    add_index :restaurants_allergies, [:restaurant_id, :allergy_id], unique: true
  end
end

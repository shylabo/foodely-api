class CreateRestaurantsCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants_categories, id: false do |t|
      t.belongs_to :restaurant
      t.belongs_to :category
      t.timestamps
    end

    add_index :restaurants_categories, [:restaurant_id, :category_id], unique: true
  end
end

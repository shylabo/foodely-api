class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :slug
      t.string :name
      t.string :description
      t.string :address
      t.string :eye_catch_image
      t.string :cover_image
      t.integer :min_order_amount

      t.timestamps
    end
  end
end

class CreateMenuItems < ActiveRecord::Migration[7.1]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.string :description
      t.string :eye_catch_image
      t.decimal :price
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end

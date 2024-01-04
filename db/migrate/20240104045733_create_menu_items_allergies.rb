class CreateMenuItemsAllergies < ActiveRecord::Migration[7.1]
  def change
    create_table :menu_items_allergies, id: false do |t|
      t.belongs_to :menu_item
      t.belongs_to :allergy
      t.timestamps
    end

    add_index :menu_items_allergies, [:menu_item_id, :allergy_id], unique: true
  end
end

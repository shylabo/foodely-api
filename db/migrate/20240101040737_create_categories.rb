class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :slug
      t.string :label
      t.string :image_url

      t.timestamps
    end
  end
end

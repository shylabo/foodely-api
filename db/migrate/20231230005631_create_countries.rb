class CreateCountries < ActiveRecord::Migration[7.1]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :label
      t.string :slug
      t.string :flag

      t.timestamps
    end
  end
end

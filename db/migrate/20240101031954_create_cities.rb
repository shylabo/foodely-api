class CreateCities < ActiveRecord::Migration[7.1]
  def change
    create_table :cities do |t|
      t.string :country_code
      t.string :label
      t.string :slug

      t.timestamps
    end
  end
end

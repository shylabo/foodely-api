class CreateAllergies < ActiveRecord::Migration[7.1]
  def change
    create_table :allergies do |t|
      t.string :slug
      t.string :label

      t.timestamps
    end
  end
end

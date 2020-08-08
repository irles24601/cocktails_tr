class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.integer :cocktail_id
      t.string :name

      t.timestamps
    end
  end
end

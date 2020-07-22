class CreateCocktails < ActiveRecord::Migration[5.2]
  def change
    create_table :cocktails do |t|
      t.string :cocktail_name
      t.string :cocktail_material
      t.string :alcohol
      t.string :image_id

      t.timestamps
    end
  end
end

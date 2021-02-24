class CreateCocktails < ActiveRecord::Migration[6.1]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.string :image
      t.string :ingredients
      t.string :instructions

      t.timestamps
    end
  end
end

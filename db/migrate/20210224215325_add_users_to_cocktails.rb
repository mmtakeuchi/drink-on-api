class AddUsersToCocktails < ActiveRecord::Migration[6.1]
  def change
    add_reference :cocktails, :user, null: false, foreign_key: true
  end
end

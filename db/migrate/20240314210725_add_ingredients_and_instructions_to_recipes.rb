class AddIngredientsAndInstructionsToRecipes < ActiveRecord::Migration[7.1]
  def change
    add_column :recipes, :ingredients, :text
    add_column :recipes, :instructions, :text
  end
end

class ChangeCaloriesToStringInRecipes < ActiveRecord::Migration[7.1]
  def change
    change_column :recipes, :calories, :string
  end
end

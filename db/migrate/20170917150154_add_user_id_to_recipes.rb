class AddUserIdToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :user_id, :integer
    remove_column :recipes, :chef, :string
  end
end

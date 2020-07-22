class RemoveMaterialFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :material, :string
    remove_column :users, :alcohol, :string
  end
end

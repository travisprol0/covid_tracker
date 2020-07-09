class EditUserMigration < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, name
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
  end
end

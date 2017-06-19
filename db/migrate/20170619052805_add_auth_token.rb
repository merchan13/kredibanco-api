class AddAuthToken < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :auth_token, :string
    add_index :users, :auth_token
    add_column :admins, :auth_token, :string
    add_index :admins, :auth_token
  end
end

class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string
    add_column :users, :password_digest, :string
    add_column :users, :uid, :string
    add_column :users, :provider, :string
  end
end

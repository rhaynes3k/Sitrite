class AddUserIdToSitter < ActiveRecord::Migration[6.0]
  def change
    add_column :sitters, :user_id, :integer
  end
end

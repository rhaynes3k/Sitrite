class AddUserIdToGuardian < ActiveRecord::Migration[6.0]
  def change
    add_column :guardians, :user_id, :integer
  end
end

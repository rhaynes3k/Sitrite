class RemoveGuardianIdFromSitter < ActiveRecord::Migration[6.0]
  def change
    remove_column :sitters, :guardian_id, :integer
  end
end

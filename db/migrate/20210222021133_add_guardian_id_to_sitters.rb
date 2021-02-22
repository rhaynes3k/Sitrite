class AddGuardianIdToSitters < ActiveRecord::Migration[6.0]
  def change
    add_column :sitters, :guardian_id, :integer
  end
end

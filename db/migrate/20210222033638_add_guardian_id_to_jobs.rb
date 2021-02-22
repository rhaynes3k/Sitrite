class AddGuardianIdToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :guardian_id, :integer
  end
end

class RemoveGuardianIdFromJobs < ActiveRecord::Migration[6.0]
  def change
    remove_column :jobs, :guardian_id, :integer
  end
end

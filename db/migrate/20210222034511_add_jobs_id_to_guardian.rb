class AddJobsIdToGuardian < ActiveRecord::Migration[6.0]
  def change
    add_column :guardians, :jobs_id, :integer
  end
end

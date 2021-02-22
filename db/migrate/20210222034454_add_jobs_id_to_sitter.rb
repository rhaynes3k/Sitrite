class AddJobsIdToSitter < ActiveRecord::Migration[6.0]
  def change
    add_column :sitters, :jobs_id, :integer
  end
end

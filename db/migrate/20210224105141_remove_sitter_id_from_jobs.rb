class RemoveSitterIdFromJobs < ActiveRecord::Migration[6.0]
  def change
    remove_column :jobs, :sitter_id, :integer
  end
end

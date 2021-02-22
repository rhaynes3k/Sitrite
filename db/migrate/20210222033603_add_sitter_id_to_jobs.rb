class AddSitterIdToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :sitter_id, :integer
  end
end

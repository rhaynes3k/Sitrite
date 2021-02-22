class AddSitterIdToGuardians < ActiveRecord::Migration[6.0]
  def change
    add_column :guardians, :sitter_id, :integer
  end
end

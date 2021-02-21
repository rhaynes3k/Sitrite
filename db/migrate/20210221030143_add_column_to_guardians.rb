class AddColumnToGuardians < ActiveRecord::Migration[6.0]
  def change
    add_column :guardians, :ph_num, :string
    add_column :guardians, :reviews, :string
  end
end

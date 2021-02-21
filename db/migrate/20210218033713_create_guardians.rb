class CreateGuardians < ActiveRecord::Migration[6.0]
  def change
    create_table :guardians do |t|
      t.string :name
      t.string :email
      t.integer :num_kids
      t.string :st_addr_1
      t.string :st_addr_2
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end

class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.datetime :date
      t.integer :num_of_kids
      t.string :duration
      t.integer :sitter_id
      t.integer :guardian_id
      t.timestamps
    end
  end
end

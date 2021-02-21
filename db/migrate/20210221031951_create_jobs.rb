class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.datetime_field :date
      t.integer :num_of_kids
      t.string :st_addr
      t.string :sitter
      t.string :duration
      t.string :guardian

      t.timestamps
    end
  end
end

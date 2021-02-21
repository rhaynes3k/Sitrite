class CreateDevises < ActiveRecord::Migration[6.0]
  def change
    create_table :devises do |t|
      t.string :User

      t.timestamps
    end
  end
end

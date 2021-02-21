class CreateSitters < ActiveRecord::Migration[6.0]
  def change
    create_table :sitters do |t|
      t.string :name
      t.string :email
      t.string :zip
      t.string :ph_num

      t.timestamps
    end
  end
end

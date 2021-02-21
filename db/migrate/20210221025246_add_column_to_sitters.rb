class AddColumnToSitters < ActiveRecord::Migration[6.0]
  def change
    add_column :sitters, :age, :integer
    add_column :sitters, :reviews, :string
  end
end

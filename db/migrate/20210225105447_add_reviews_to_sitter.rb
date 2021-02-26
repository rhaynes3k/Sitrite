class AddReviewsToSitter < ActiveRecord::Migration[6.0]
  def change
    add_column :sitters, :reviews, :string
  end
end

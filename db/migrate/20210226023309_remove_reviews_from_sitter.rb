class RemoveReviewsFromSitter < ActiveRecord::Migration[6.0]
  def change
    remove_column :sitters, :reviews, :string
  end
end

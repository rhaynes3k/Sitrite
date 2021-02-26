class RemoveReviewsFromGuardian < ActiveRecord::Migration[6.0]
  def change
    remove_column :guardians, :reviews, :string
  end
end

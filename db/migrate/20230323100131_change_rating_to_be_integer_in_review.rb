class ChangeRatingToBeIntegerInReview < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :review_rating, :string
    add_column :reviews, :review_rating, :integer
  end
end

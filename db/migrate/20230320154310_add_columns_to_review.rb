class AddColumnsToReview < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :review_content, :string
    add_column :reviews, :review_rating, :string
    add_reference :reviews, :user, null: false, foreign_key: true
    add_reference :reviews, :booking, null: false, foreign_key: true
  end
end

class RenameProductReviewsToReviews < ActiveRecord::Migration[6.0]
  def change
    rename_table :product_reviews, :reviews 
  end
end

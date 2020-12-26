class CreateProductReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :product_reviews do |t|
      t.string :title
      t.integer :rating
      t.text :review
      t.integer :user_id
      t.integer :product_id

      t.timestamps
    end
  end
end

class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false
      t.text :content, null: false
      # t.integer :restaurant_id
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end

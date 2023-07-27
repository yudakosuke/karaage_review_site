class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.string :reviewer_name
      t.text :comment
      t.integer :rating
      t.timestamps
    end
  end
end

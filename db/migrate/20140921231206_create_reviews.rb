class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :body

      t.references :restaurant, index: true

      t.timestamps
    end
  end
end

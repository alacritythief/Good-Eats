class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end

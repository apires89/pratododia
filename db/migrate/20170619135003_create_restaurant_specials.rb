class CreateRestaurantSpecials < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurant_specials do |t|
      t.date :data
      t.text :desciption
      t.references :special, foreign_key: true
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end

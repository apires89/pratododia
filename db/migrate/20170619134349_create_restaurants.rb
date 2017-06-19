class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.text :address
      t.string :city
      t.string :postcode
      t.string :phone
      t.string :website
      t.string :email
      t.string :facebook
      t.integer :capacity
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

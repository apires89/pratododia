class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.references :restaurant, foreign_key: true
      t.integer :star
      t.text :description

      t.timestamps
    end
  end
end

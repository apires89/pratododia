class AddCountryToRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :country, :string
  end
end

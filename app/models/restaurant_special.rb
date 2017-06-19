class RestaurantSpecial < ApplicationRecord
  belongs_to :special
  belongs_to :restaurant
end

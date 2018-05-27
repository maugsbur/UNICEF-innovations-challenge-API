class Inventory < ApplicationRecord
  belongs_to :product
  belongs_to :stockroom
  has_many :prices
end

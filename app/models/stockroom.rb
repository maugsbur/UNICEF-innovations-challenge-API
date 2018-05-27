class Stockroom < ApplicationRecord
  has_many :products, through: :inventories
  has_many :inventories
end

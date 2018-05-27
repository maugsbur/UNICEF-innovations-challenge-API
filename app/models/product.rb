class Product < ApplicationRecord
  has_many :stockrooms, through: :inventories
  has_many :inventories
  belongs_to :category
end

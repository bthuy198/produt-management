class Category < ApplicationRecord
  has_many :inventories
  has_many :products, through: :inventories
  validate :name, :unique => true, :presence => true
  
  before_save do
    self.name = name.capitalize   
end
end

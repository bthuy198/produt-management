class Product < ApplicationRecord
  has_many :inventories
  has_many :categories, through: :inventories 
  validate :name, :price, presence: true

  def mark_out_of_stock
    stock = inventories.sum(:stock)
    if stock < 5
	update(out_of_stock: true)
    else 
	out_of_stock: false
    end
  end
end

class Product < ApplicationRecord
  self.table_name = 'product'
  belongs_to :category, foreign_key: 'category'

  def self.search(query)
    where('name like ?', "%#{query}%")
  end
end

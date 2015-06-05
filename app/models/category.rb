class Category < ActiveRecord::Base

  has_many :categories_items, primary_key: 'category_id', foreign_key: 'category_id'
  has_many :items, through: :categories_items

end

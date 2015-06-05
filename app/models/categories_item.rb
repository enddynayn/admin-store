class CategoriesItem < ActiveRecord::Base

  belongs_to :item, primary_key: 'item_id', foreign_key: 'item_id'
  belongs_to :category, primary_key: 'category_id', foreign_key: 'category_id'

end

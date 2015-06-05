class Item < ActiveRecord::Base

  has_many :users_items, primary_key: 'item_id', foreign_key: 'item_id'
  has_many :users, through: :users_items

  #SELECT "categories_items".* FROM "categories_items" WHERE "categories_items"."item_id" = $1  [["item_id", 1155]]
  has_many :categories_items, primary_key: 'item_id', foreign_key: 'item_id'
  has_many :categories, through: :categories_items

end

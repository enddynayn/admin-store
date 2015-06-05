class User < ActiveRecord::Base

  has_many :users_items, primary_key: 'user_id', foreign_key: 'user_id'
  has_many :items, through: :users_items

end

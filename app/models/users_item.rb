class UsersItem < ActiveRecord::Base

  belongs_to :user, primary_key: 'user_id', foreign_key: 'user_id'
  belongs_to :item, primary_key: 'item_id', foreign_key: 'item_id'

end

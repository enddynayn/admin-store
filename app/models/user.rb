class User < ActiveRecord::Base

  self.primary_key = 'user_id'
  has_many :users_items, primary_key: 'user_id', foreign_key: 'user_id'
  has_many :items, through: :users_items


  def self.all_user_items
    Rails.cache.fetch("all_user_items", expires_in: 1.hour) do
      User.all.includes(items: [:categories]).to_a
    end
  end

end

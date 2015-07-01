class Comment < ActiveRecord::Base
  validates :user_name, :presence => true
  validates :description, :presence => true

  belongs_to :post
end

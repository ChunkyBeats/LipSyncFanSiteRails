class Post < ActiveRecord::Base
  validates :video_url, :presence => true
  validates :title, :presence => true
  validates :description, :presence => true

  has_many :comments
end

class Post < ActiveRecord::Base
  validates :video_url, :presence => true
  validates :title, :presence => true
  validates :description, :presence => true

  has_many :comments


  def self.Search(searchString)
    result = self.basic_search(title: searchString)
    if result.kind_of?(Array)
      return result
    else
      return []
    end
  end

end

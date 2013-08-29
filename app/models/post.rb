class Post < ActiveRecord::Base
  belongs_to :categories
  attr_accessible :content, :creater, :summ, :title
  attr_accessible :categories_id
  has_attached_file :pic
  attr_accessible :pic
end

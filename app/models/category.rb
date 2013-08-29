class Category < ActiveRecord::Base
  attr_accessible :namecate
  has_many :post
end

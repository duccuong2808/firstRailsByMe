class Catebg < ActiveRecord::Base
	validates(:namecatebg, presence: true, uniqueness: { case_sensitive: false })
	attr_accessible :namecatebg
end
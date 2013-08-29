class Sortbg < ActiveRecord::Base
	validates(:namesortbg, presence: true, uniqueness: { case_sensitive: false })
	attr_accessible :namesortbg
end

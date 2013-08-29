class Blogcr < ActiveRecord::Base
	validates(:content, presence: true, uniqueness: { case_sensitive: false })
	validates(:creater, presence: true)
	validates(:title, presence: true, uniqueness: { case_sensitive: false })
	VALID_EMAIL_REGEX = /^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/
  	validates :link, presence: true, format: { with: VALID_EMAIL_REGEX }
	attr_accessible :content, :creater, :link, :title, :catebgs_id, :sortbgs_id, :tag_list, :attach
	acts_as_taggable
	has_attached_file :attach
end
class Pin < ActiveRecord::Base
	belongs_to :user

	validates :image, presence: true
	has_attached_file :image, :styles => { :medium => "600x600", :small => "300x300", :thumb => "100x100" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end


class User < ApplicationRecord
	has_secure_password
	has_attached_file :profile_picture
  	validates_attachment_content_type :profile_picture, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  
end

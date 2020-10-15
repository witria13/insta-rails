class Post < ApplicationRecord
	belongs_to 	:user
	has_many	:comments
	has_many	:likes, dependent: :destroy
	has_many	:favorites, dependent: :destroy

	mount_uploader :image, ImageUploader

	validates :image, presence: true
end

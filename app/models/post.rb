class Post < ApplicationRecord
	
	has_many :comments, dependent: :destroy
	validates :title, :content, :tag, :auther, presence: true

	accepts_nested_attributes_for :comments
end
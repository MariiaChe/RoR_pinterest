class Pin < ApplicationRecord
	validates :photo, presence:true
	validates :description, presence:true

	belongs_to :user
	has_many :likes
end

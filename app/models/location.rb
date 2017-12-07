class Location < ApplicationRecord
	belongs_to :race
	has_many :photos

	validates :name, :lat, :lng, presence: true


	def has_photo?
		if photos.length > 0
			return true
		else
			return false
		end
	end
end

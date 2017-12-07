class Race < ApplicationRecord
	has_many :locations
	validates :name, :date, presence: true

	def self.upcoming
		where("date > ?", 1.day.ago)
	end

	def formatted_date
		date.strftime("%^A %^B %d, %Y %I:%M")
	end

	def start_point
		locations.first
	end

	def checkins
		locations.all[1..-1]
	end

	def has_start?
		return locations.length > 0
	end

	def has_checkins?
		return locations.length > 1
	end
end

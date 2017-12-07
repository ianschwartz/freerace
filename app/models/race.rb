class Race < ApplicationRecord
	has_many :checkpoints
	validates :name, :date, presence: true

	def self.upcoming
		where("date > ?", 1.day.ago)
	end

	def formatted_date
		date.strftime("%^A %^B %d, %Y %I:%M")
	end

	def start_point
		checkpoints.first
	end

	def checkins
		checkpoints.all[1..-1]
	end

	def has_start?
		return checkpoints.length > 0
	end

	def has_checkins?
		return checkpoints.length > 1
	end
end

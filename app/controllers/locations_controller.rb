class LocationsController < ApplicationController
	def show
		@location = Location.find(params[:id])
		if @location.nil?
			redirect_to root_path
		else
			respond_to do |f|
				f.html
			end
		end
	end
end

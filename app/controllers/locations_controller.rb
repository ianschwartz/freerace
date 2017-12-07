class LocationsController < ApplicationController
	def show
		@location = Location.find(params[:id])
		if @location
			respond_to do |f|
				f.html
			end
		else
			redirect_to root_path
		end
	end

	def new
		@location = Location.new
	end

	def create
    @location = Location.new(location_params)

    if @location.save
      redirect_to @location
    else
    	render 'new'
    end
  end
end
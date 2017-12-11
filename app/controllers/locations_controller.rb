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
		@location = Location.new(race: Race.find(params[:race_id]))
	end

	def create
	    @location = Race.find(params[:race_id]).locations.new(location_params)

	    if @location.save
	      redirect_to @location
	    else
	    	redirect_to 'new'
	    end
	end

    def edit
		@location = Location.find(params[:id])
    end

	def update
	    @location = Location.find(params[:id])
	    if @location.update_attributes(location_params)
	      # Handle a successful update.
	      redirect_to @location
	    else
	      render 'edit'
	    end
	end

	def destroy
		@location = Location.find(params[:id])
		@race = @location.race
		@location.destroy
		flash[:success] = "Location deleted"
		redirect_to @race
	end

	private

	def location_params
		params.require(:location).permit(:name, :lat, :lng)
	end
end
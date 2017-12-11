class RacesController < ApplicationController
	def index
		@races = Race.upcoming.order(date: :asc)
	end

	def show
		@race = Race.find(params[:id]);
		@location = @race.locations.new
	end

	def new
		@race = Race.new
	end

	def create
    @race = Race.new(race_params)

    if @race.save
      redirect_to @race
    else
    	render 'new'
    end
  end
end

private

def race_params
  params.require(:race).permit(:name, :"date(1i)", :"date(2i)", :"date(3i)", :"date(4i)", :"date(5i)")
end
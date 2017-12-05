class CheckpointsController < ApplicationController
	def show
		@checkpoint = Checkpoint.find(params[:id])
		if @checkpoint.nil?
			redirect_to root_path
		else
			respond_to do |f|
				f.html
			end
		end
	end
end

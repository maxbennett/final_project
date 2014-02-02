class RoutineRequirementsController < ApplicationController

	def index

	end

	def new

	end

	def create
		
	end

	def update
		routine_requirement = RoutineRequirement.find(params[:id])
		routine_requirement.update_attributes(:input => (params[:input])) if params[:input] != nil
		redirect_to home_path
	end

	def destroy
		
	end


end
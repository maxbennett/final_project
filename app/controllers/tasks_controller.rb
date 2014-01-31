class TasksController < ApplicationController

	def index
		@tasks = Task.all
		@task = Task.new
	end

	def new
		@task = Task.new
	end

	def create
		task = Task.create(title: params[:title])
		redirect_to home_path
	end

	def destroy
		
	end



end

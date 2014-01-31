class HomeController < ApplicationController
	def index
		@routines = Routine.all
		@daily_routines = Routine.where(:frequency => "daily")
		@weekly_routines = Routine.where(:frequency => "weekly")
		@monthly_routines = Routine.where(:frequency => "monthly")

		@routine_todos=RoutineTodo.all

		routines = @daily_routines.map do |routine|
			RoutineTodo.where(:routine_id => routine.id).order(:due_date)[0]
		end
		raise
	end


end

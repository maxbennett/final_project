class RoutinesController < ApplicationController

def index

end

def new

end

def create
	@routine = Routine.create(title:params[:title], description:params[:description], frequency:params[:frequency])
	
	@routine_todos = RoutineTodo.create(due_date:Time.now, completed:false, routine_id:@routine.id)

	redirect_to home_path
end

def update
	routine = Routine.find(params[:id])

	redirect_to home_path
end

def destroy
	routine = Routine.find(params[:id])
	routine_todos = RoutineTodo.where(routine_id: routine.id)
	routine_todos.each do |todo|
		todo.destroy
	end
	routine.destroy
	redirect_to home_path
end

private
	def routine_params
		params.require(:routine).permit(:title, :description, :frequency)
	end
end
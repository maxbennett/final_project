class RoutinesController < ApplicationController

def index

end

def new

end

def create
	@routine = Routine.create(title:params[:title], description:params[:description], frequency:params[:frequency], min_words:params[:min_words].to_f)
	
	@routine_todo = RoutineTodo.create(due_date:Time.now, completed:false, routine_id:@routine.id)

	if to_boolean(params[:text_requirements]) == true
		RoutineRequirement.create(routine_todo_id:@routine_todo.id, req_type:"text")
	end

	i=1
	until i > params[:link_requirements].to_f
		RoutineRequirement.create(routine_todo_id:@routine_todo.id, req_type:"link")
		i+=1
	end

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
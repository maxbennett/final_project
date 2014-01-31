class RoutineTodosController < ApplicationController

def index

end

def new

end

def create
	
end

def update
	
	routine_todo = RoutineTodo.find(params[:id])
	
	routine_todo.update_attributes(:completed => to_boolean(params[:completed])) if params[:completed] != nil

	routine_todo.update_attributes(:text_requirement => params[:text_requirement]) if params[:text_requirement] != nil

	redirect_to home_path
end

def destroy
	
end

private
	def routine_params
		params.require(:routine).permit(:title, :description, :frequency)
	end
end
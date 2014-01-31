class Routine < ActiveRecord::Base

	has_many :routine_todos

	def self.routine_frequency
		routines = {
					daily: Routine.where(frequency: "daily"),
					weekly:  Routine.where(frequency: "weekly"), 
					monthly:  Routine.where(frequency: "monthly"), 
				}
	end

	def recent_routine_todo
		recent_routine_todo = RoutineTodo.where(routine_id: self.id).order(:due_date).first
		return recent_routine_todo
	end
end

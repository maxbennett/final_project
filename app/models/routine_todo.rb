class RoutineTodo < ActiveRecord::Base
	belongs_to :routine
	has_many :routine_requirement
	accepts_nested_attributes_for :routine_requirement

	def get_requirements(type)
		req = RoutineRequirement.where(routine_todo_id: self.id, req_type: type)

		return req
	end

end

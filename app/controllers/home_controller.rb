class HomeController < ApplicationController

	def index
		@routines = Routine.routine_frequency
	end

end





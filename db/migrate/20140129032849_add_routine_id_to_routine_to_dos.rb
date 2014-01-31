class AddRoutineIdToRoutineToDos < ActiveRecord::Migration
  def change
  	add_column :routine_todos, :routine_id, :string 
  end
end

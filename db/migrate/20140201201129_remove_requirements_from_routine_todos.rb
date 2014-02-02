class RemoveRequirementsFromRoutineTodos < ActiveRecord::Migration
  def change
  	remove_column :routine_todos, :text_requirement
  	remove_column :routine_todos, :link_requirement
  end
end

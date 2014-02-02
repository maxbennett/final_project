class AddRequirementsToRoutine < ActiveRecord::Migration
  def change
  	add_column :routines, :text_requirements, :integer
  	add_column :routines, :link_requirements, :integer
  end
end

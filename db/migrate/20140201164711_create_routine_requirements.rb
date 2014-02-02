class CreateRoutineRequirements < ActiveRecord::Migration
  def change
    create_table :routine_requirements do |t|
      t.string :input
      t.string :type
      t.integer :routine_todo_id

      t.timestamps
    end
  end
end

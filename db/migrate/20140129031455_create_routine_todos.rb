class CreateRoutineTodos < ActiveRecord::Migration
  def change
    create_table :routine_todos do |t|
      t.date :due_date
      t.boolean :completed
      t.datetime :completed_time
      t.string :text_requirement
      t.string :link_requirement

      t.timestamps
    end
  end
end

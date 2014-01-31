class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.date :due_date
      t.boolean :completed
      t.date :completed_time
      t.integer :priority

      t.timestamps
    end
  end
end

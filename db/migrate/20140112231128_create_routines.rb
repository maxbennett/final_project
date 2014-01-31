class CreateRoutines < ActiveRecord::Migration
  def change
    create_table :routines do |t|
      t.string :title
      t.string :description
      t.string :frequency

      t.timestamps
    end
  end
end

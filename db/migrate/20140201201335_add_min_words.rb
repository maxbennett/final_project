class AddMinWords < ActiveRecord::Migration
  def change
  	add_column :routines, :min_words, :integer
  	change_column :routines, :text_requirements, :boolean
  end
end

class ChangeTypeName < ActiveRecord::Migration
  def change
  	rename_column :routine_requirements, :type, :req_type
  end
end

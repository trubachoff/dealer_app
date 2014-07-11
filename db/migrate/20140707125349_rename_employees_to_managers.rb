class RenameEmployeesToManagers < ActiveRecord::Migration
  def up
    rename_table :employees, :managers
    rename_column :customers, :employee_id, :manager_id
  end

  def down
    rename_table :managers, :employees
    rename_column :customers, :manager_id, :employee_id
  end
end

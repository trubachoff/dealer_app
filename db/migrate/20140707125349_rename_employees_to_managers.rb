class RenameEmployeesToManagers < ActiveRecord::Migration
  def up
    rename_table :employees, :managers
  end

  def down
   # rename_table :managers, :employees
  end
end

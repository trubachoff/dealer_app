class RenameStatusColumnFromStatuses < ActiveRecord::Migration
  def change
    rename_column :Statuses, :status, :name
  end
end

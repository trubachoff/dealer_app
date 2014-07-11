class RemoveVisitedFromCustomers < ActiveRecord::Migration
  def up
    remove_column :customers, :visited
  end

  def down
    add_column :customers, :visited, :date
  end
end

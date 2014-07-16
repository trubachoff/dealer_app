class AddStatusRefToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :status_id, :integer, references: :statuses, default: 1 
  end
end

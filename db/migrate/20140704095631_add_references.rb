class AddReferences < ActiveRecord::Migration
  def change
    add_column :employees, :dealer_id, :integer, references: :dealers
    add_index :employees, :dealer_id

    add_column :customers, :employee_id, :integer, references: :employees
    add_index :customers, :employee_id

    add_column :cars, :dealer_id, :integer, references: :dealers
    add_column :cars, :customer_id, :integer, references: :customers
    add_column :cars, :brand_id, :integer, references: :brands
    add_index :cars, :dealer_id
    add_index :cars, :customer_id
    add_index :cars, :brand_id
  end
end

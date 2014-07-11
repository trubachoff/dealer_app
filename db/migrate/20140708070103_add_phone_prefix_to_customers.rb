class AddPhonePrefixToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :phone_prefix, :string
  end
end

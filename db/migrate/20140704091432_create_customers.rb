class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :phone
      t.string :phone_code
      t.date :visited

      t.timestamps
    end
  end
end

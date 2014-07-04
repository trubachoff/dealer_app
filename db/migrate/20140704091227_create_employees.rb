class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.integer :fired
      t.string :encrypted_password

      t.timestamps
    end
  end
end

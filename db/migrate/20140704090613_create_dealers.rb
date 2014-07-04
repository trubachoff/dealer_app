class CreateDealers < ActiveRecord::Migration
  def change
    create_table :dealers do |t|
      t.string :title
      t.string :address
      t.string :phone
      t.string :site

      t.timestamps
    end
  end
end

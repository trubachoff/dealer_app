class ChangeFiredIntToBoolean < ActiveRecord::Migration
  def up
    change_column :managers, :fired, :boolean, default: false
  end

  def down
  end
end

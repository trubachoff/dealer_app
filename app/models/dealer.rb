class Dealer < ActiveRecord::Base
  attr_accessible :address, :phone, :site, :title
  has_many :cars
  has_many :employees
  has_many :customers, through: :employees

end

class Dealer < ActiveRecord::Base
  attr_accessible :address, :phone, :site, :title
  has_many :cars
  has_many :managers
  has_many :customers, through: :managers

end

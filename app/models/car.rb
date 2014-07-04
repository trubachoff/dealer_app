class Car < ActiveRecord::Base
  attr_accessible :model, :vin
  belongs_to :customer
  belongs_to :dealer
  belongs_to :brand

end

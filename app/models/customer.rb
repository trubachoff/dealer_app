class Customer < ActiveRecord::Base
  attr_accessible :email, :lastname, :name, :phone, :phone_code, :visited
  has_many :cars
  belongs_to :employee
  
end

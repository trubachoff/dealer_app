class Employee < ActiveRecord::Base
  attr_accessible :email, :encrypted_password, :fired, :lastname, :name
  belongs_to :dealer
  has_many :customers
  
end

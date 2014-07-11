class Manager < ActiveRecord::Base
  attr_accessible :email, :encrypted_password, :fired, :lastname, :name, :dealer_id, :customers_attributes
  belongs_to :dealer
  has_many :customers

end

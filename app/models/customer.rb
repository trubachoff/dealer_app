class Customer < ActiveRecord::Base
  attr_accessible :email, :name, :lastname, 
    :phone_prefix, :phone_code, :phone,
    :comment, :manager_id, :cars_attributes, :status_id

  has_many :cars
  belongs_to :manager
  belongs_to :status

  accepts_nested_attributes_for :cars

  validates :email, presence: true
  validates :manager_id, presence: true

end

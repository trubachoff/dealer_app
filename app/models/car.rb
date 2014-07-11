class Car < ActiveRecord::Base
  attr_accessible :model, :vin, :brand_id, :id, :brand_attributes
  belongs_to :customer
  belongs_to :dealer
  belongs_to :brand

  validates :brand, presence: true
  validates :dealer, presence: true

  accepts_nested_attributes_for :brand

end

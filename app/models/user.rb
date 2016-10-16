class User < ApplicationRecord
  before_save :set_default

  validates :name, presence: true
  validates :address, presence: true
  validates :phone, presence: true

  has_many :orders

  def set_default
  	self.order_status = false
  end
end

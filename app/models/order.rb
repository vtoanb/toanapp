class Order < ApplicationRecord
  has_many :foods

  def self.unique_id
  	(Faker::Number.number(4) + Time.now.utc.to_i.to_s)
  end
end

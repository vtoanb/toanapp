class Order < ApplicationRecord
  belongs_to :food, optional: true
  belongs_to :user

  def self.unique_id
  	(Faker::Number.number(4) + Time.now.utc.to_i.to_s)
  end
end

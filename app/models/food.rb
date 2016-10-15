class Food < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  # belongs_to :order
  belongs_to :section

  def self.search(search)
    # where("name ILIKE #{keyword}")
    where("name ILIKE ?", "%#{search}%")
  end
end

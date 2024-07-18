class City < ApplicationRecord
  has_many :users

  validates :name, :postal_code, presence: true
end

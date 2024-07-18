class Like < ApplicationRecord
  belongs_to :user
  belongs_to :gossip

  validates :user_id, uniqueness: { scope: :gossip_id, message: "has already liked this gossip" }
end

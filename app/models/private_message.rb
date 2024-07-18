class PrivateMessage < ApplicationRecord
  belongs_to :sender, class_name: 'User'
  belongs_to :recipient, class_name: 'User'

  validates :content, :sender_id, :recipient_id, presence: true
end

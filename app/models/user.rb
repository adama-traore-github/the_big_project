class User < ApplicationRecord
  belongs_to :city
  has_many :gossips
  has_many :comments
  has_many :likes
  has_many :sent_messages, foreign_key: :sender_id, class_name: 'PrivateMessage'
  has_many :received_messages, foreign_key: :recipient_id, class_name: 'PrivateMessage'

  validates :first_name, :last_name, :email, :age, presence: true
end

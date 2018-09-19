class Email < ApplicationRecord
  validates :email, presence: true
  validates :kind, presence: true
  belongs_to :member, inverse_of: :emails
  validates_presence_of :member
end

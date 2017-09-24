class Email < ApplicationRecord
  validates :email, presence: true
  validates :type, presence: true
  belongs_to :member
end
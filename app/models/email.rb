class Email < ApplicationRecord
  validates :email, presence: true
  belongs_to :member
end
class Address < ApplicationRecord
  validates :line1, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates :kind, presence: true
  belongs_to :member, inverse_of: :address
  validates_presence_of :member
end

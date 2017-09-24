class Address < ApplicationRecord
  validates :line1, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates :type, presence: true
  belongs_to :member
end
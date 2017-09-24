class Phone < ApplicationRecord
  validates :phone, presence: true
  validates :type, presence: true
  belongs_to :member
end
class Phone < ApplicationRecord
  validates :phone, presence: true
  validates :kind, presence: true
  belongs_to :member, inverse_of: :phone
  validates_presence_of :member
end

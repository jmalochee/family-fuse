class Contact < ApplicationRecord
	enum kind: [ :email, :phone, :fax, :online, :other ]
  validates :point, :kind, :name, :preferred, presence: true

  belongs_to :member, inverse_of: :contacts
  validates_presence_of :member
end

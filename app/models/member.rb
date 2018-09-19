class Member < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  # validates :birth_date, presence: true

  has_many :emails, dependent: :destroy, inverse_of: :member
  has_many :phones, dependent: :destroy, inverse_of: :member
  has_many :addresses, dependent: :destroy, inverse_of: :member

  accepts_nested_attributes_for :emails, :phones, :addresses, allow_destroy: true

  has_parents(options = {current_spouse: true})

  NULL_ATTRS = [
    :mid_name, 
    :aka, 
    :birth_date, 
    :mother_id, 
    :father_id, 
    :death_date, 
    :current_spouse_id
  ]

  before_save :nil_if_blank

  def full_name
    "#{first_name} #{mid_name} #{last_name}"
  end

  protected

  def nil_if_blank
    NULL_ATTRS.each { |attr| self[attr] = nil if self[attr].blank? }
  end

end

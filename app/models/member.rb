class Member < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :family_id, presence: true
  
  has_and_belongs_to_many :families, through: :families_members
  has_many :emails
  has_many :phones
  has_many :addresses
  
  NULL_ATTRS = [:mid_name, :aka, :birthdate]
  before_save :nil_if_blank
  
  def full_name
    "#{first_name} #{mid_name} #{last_name}"
  end
  
  protected
  
  def nil_if_blank
    NULL_ATTRS.each { |attr| self[attr] = nil if self[attr].blank? }
  end

end
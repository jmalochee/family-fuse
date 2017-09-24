class Member < ApplicationRecord
  validates :first_name, null: false
  validates :last_name, null: false
  validates :family_id, null: false
  
  has_and_belongs_to_many :families, through: :families_members
  
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
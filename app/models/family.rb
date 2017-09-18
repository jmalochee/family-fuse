class Family < ApplicationRecord
  validates :surname, presence: true
  validates :matriarch, presence: true
  validates :patriarch, presence: true
  validates :state, presence: true
  
  has_and_belongs_to_many :members, through: :families_members
  
  NULL_ATTRS = [:city, :anniversary]
  before_save :nil_if_blank
  
  def title
    "The #{surname} family of #{patriarch} and #{matriarch}, in #{city}, #{state}"
  end
  
  protected
  
  def nil_if_blank
    NULL_ATTRS.each { |attr| self[attr] = nil if self[attr].blank? }
  end
end

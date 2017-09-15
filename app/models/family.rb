class Family < ApplicationRecord
  validates :surname, presence: true
  validates :matriarch, presence: true
  validates :patriarch, presence: true
  validates :state, presence: true
  validates :city, presence: true
  
  def title
    "The #{surname} family of #{patriarch} and #{matriarch}, in #{city}, #{state}"
  end
end

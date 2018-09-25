class Member < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  # validates :birth_date, presence: true

  has_many :contacts, dependent: :destroy, inverse_of: :member
  has_many :addresses, dependent: :destroy, inverse_of: :member

  accepts_nested_attributes_for :contacts, :addresses, allow_destroy: true

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

  def goes_by
    !!aka ? aka : first_name
  end

  def initials
    goes_by[0] + ( !!mid_name ? mid_name[0] : "" ) + last_name[0]
  end

  def full_name
    "#{first_name} #{mid_name} #{last_name}"
  end

  def age
    now = Time.now.utc.to_date
    years = now.year - self.birth_date.year 
    bday_before_this_month = now.month > self.birth_date.month
    bday_this_month = now.month == self.birth_date.month
    bday_before_today = now.day >= self.birth_date.day
    years - (( bday_before_this_month || ( bday_this_month && bday_before_today )) ? 0 : 1 )
  end

  # initial method produces an rgb value from each initial, using the mean value when a middle name is absent
  # def color
  #   def char_to_num(letter)
  #     "a".upto("z").to_a.index(letter)
  #   end
  #   mid_average = ((char_to_num(initials[0]) - char_to_num(initials[1])).abs/2 + char_to_num(initials[0]))
  #   mid_average = "a".upto("z").to_a[mid_average]
  #   mid = !!mid_name ? mid_name[0] : mid_average
  #   color = []
  #   initials.insert(1, mid).each_char { i color << (char_to_num(i) * 10) }
  #   color.to_s[1..-2]
  # end

  # this method produces a numeric sum based on the initials and scales to a hue hsl value
  def color
    def char_to_num(letter)
      "a".upto("z").to_a.index(letter)
    end
    hue = 0
    initials.each_char { i hue += char_to_num(i) }
    ((hue / (initials.length * 25.0)) * 360).floor
  end

  protected

  def nil_if_blank
    NULL_ATTRS.each { |attr| self[attr] = nil if self[attr].blank? }
  end

end

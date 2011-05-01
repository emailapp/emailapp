class Contact < ActiveRecord::Base
  validates :first, :last, :presence => true
  validates :email, :presence => true, 
                    :length => {:minimum => 3, :maximum => 254},
                    :uniqueness => true,
                    :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
  #validates :birthday, :format => {:with => /\d{2}\/\d{2}\/\d{4}/, :message => "^Date must be in the following format: mm/dd/yyyy"}

  validate :birthday_is_valid
 
  def birthday_is_valid
    if !birthday_before_type_cast.blank? && birthday.blank?
       errors.add(:birthday, "must be in the mm/dd format")
    end
  end
  

  def full_name
    self.first + " " + self.last
        
  end

end


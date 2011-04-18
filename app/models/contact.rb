class Contact < ActiveRecord::Base
  def full_name
    self.first + " " + self.last
    
  end



end

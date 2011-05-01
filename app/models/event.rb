class Event < ActiveRecord::Base
    
  before_validation :update_contacts
  def update_contacts
    if self.contacts.kind_of?(Array) then
      self.contacts = self.contacts.join(",")
    end
  end

  validates :name, :subject, :message, :presence => true
  validates :schedule_time, :format => {:with => /\d{2}\/\d{2}\/\d{4}/, :message => "^Date must be in the following format: mm/dd/yyyy"}

end

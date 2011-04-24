class Event < ActiveRecord::Base
  before_validation :update_contacts
  def update_contacts
    if self.contacts.kind_of?(Array) then
      self.contacts = self.contacts.join(",")
    end
  end


end

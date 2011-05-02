class Event < ActiveRecord::Base
    
  before_validation :update_contacts
  def update_contacts
    if self.contacts.kind_of?(Array) then
      self.contacts = self.contacts.join(",")
    end
  end

  validates :name, :subject, :message, :presence => true
  #validates :schedule_time, :format => {:with => /\d{2}\/\d{2}\/\d{4}/, :message => "must be in the mm/dd/yyyy format"}
  
 
  #def schedule_time_is_valid
  #  if schedule_time_before_type_cast.blank?
  #    errors.add(:schedule_time, "can't be blank")
  #  elsif schedule_time.blank?
  #    errors.add(:schedule_time, "must be in the mm/dd/yyyy format")
  #  end
  #end

  def schedule_time_string
    if !schedule_time.nil? then
      schedule_time.to_s(:date)
    end
  end

  def schedule_time_string=(schedule_time_str)
    self.schedule_time = Date.strptime(schedule_time_str, "%m/%d/%Y")
  rescue ArgumentError
    @schedule_time_invalid = true
  end
  
  validate :schedule_time_is_valid
  
  def schedule_time_is_valid
    errors.add(:schedule_time, "must be in the mm/dd/yyyy format and valid date") if @schedule_time_invalid
  end


end

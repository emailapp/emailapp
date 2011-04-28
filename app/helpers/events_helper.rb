module EventsHelper

  def check_contact(i)
    if @event.contacts
      @event.contacts.split(',').include?("#{i}")
    else
      false
    end    
    
  end  
  
end

task :sendemail => :environment do
  smtp = SmtpInfo.find(:first)
  ActionMailer::Base.smtp_settings = {  
    :address              => smtp.host,  
    :port                 => smtp.port,  
    :domain               => "",  
    :user_name            => smtp.user_name,  
    :password             => smtp.password,  
    :authentication       => smtp.authentication,  
    :enable_starttls_auto => smtp.starttls  
  }
  
  event = Event.find(:first)
  
  if !event.contacts.blank? then
    contact_array = event.contacts.split(",")
    
    contact_array.each do |contact_id| 
 
      mail_info = Contact.find(contact_id)
      ScheduleMailer.send_event_mails(mail_info, event, smtp.user_name).deliver
      puts mail_info.email    
    end
        
  end
  
  
end

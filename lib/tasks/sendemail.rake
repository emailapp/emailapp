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
  puts ActionMailer::Base.smtp_settings[:address]
end

class ScheduleMailer < ActionMailer::Base

  def send_event_mails(mail_info, event, from)

    mail(:to => mail_info.email, :subject => event.subject, :from => from) do |format|
      format.text { render :text => "Dear #{mail_info.first},\n\n#{event.message}" }
      #format.html { render :text => event.message }
          
    end

  end

end

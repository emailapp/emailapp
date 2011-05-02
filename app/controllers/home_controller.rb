class HomeController < ApplicationController
  def index
    #@events = Event.find(:all).sort_by {|e| change_date_format(e.schedule_time)} #string sorting
    @events = Event.find(:all, :order => "schedule_time ASC", :conditions => ["schedule_time >= ? AND status = 0", Date.today], :limit => 20)
    @contacts = Contact.find(:all, :order => "created_at DESC", :limit => 20)
    @smtp_info = SmtpInfo.find(:first)
  end

  def about
  end

end

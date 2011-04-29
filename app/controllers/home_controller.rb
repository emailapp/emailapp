class HomeController < ApplicationController
  def index
    #@events = Event.find(:all).sort_by {|e| change_date_format(e.schedule_time)} #string sorting
    @events = Event.find(:all, :order => "schedule_time DESC", :conditions => ["schedule_time > ?", Date.today], :limit => 20)
    @contacts = Contact.all
  end

  def about
  end

end

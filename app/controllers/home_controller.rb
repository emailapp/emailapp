class HomeController < ApplicationController
  def index
    #@events = Event.find(:all).sort_by {|e| change_date_format(e.schedule_time)}
    @events = Event.all
    @contacts = Contact.all
  end

  def about
  end

end

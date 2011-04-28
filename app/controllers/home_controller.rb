class HomeController < ApplicationController
  def index
    @events = Event.all
    @contacts = Contact.all
  end

  def about
  end

end

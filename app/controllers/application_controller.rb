class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def change_date_format(date_str)
    
    if date_str.match("^[0-9]{2}/[0-9]{2}/[0-9]{4}$")
      date_array = date_str.split("/")
      return date_array[2]+date_array[0]+date_array[1]
      
    end  
    
    return date_str
  
  end
 
  
end

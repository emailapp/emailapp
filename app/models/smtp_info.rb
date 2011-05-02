class SmtpInfo < ActiveRecord::Base
  validates :user_name, :password, :host, :port, :authentication, :starttls, :presence => true
end

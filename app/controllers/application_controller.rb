class ApplicationController < ActionController::Base
  protect_from_forgery
  
  @site_name = "Dealer"
  @year = Date.today.year
end

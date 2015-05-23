class WelcomeController < ApplicationController
  def index
    @logins = Login.all
    @logins.each do |login|
      url_temp = 
      response = HTTParty.get("")
      login.timed_out?

    end
    @logins
  end
end

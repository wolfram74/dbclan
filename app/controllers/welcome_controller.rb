class WelcomeController < ApplicationController
  def index
    @logins = Login.all
    @logins.each do |login|
      login.timed_out?
    end
    @logins
  end
end

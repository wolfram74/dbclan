class LoginsController < ApplicationController
  def show
    Login.find(params[:id]).update(available: false)
    redirect_to("/")
  end

  def update
    Login.find(params[:id]).update(available: true)
    redirect_to("/")
  end
end

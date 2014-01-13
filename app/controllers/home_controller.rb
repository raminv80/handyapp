class HomeController < ApplicationController
  def index
  	@services = ServiceType.all
  end
end
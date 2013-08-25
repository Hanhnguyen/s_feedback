class PagesController < ApplicationController
  before_filter :authenticate

  def home
  end

  def authenticate
    authenticate_or_request_with_http_basic do |name, password|
      name == "admin" && password == "lifeisgood3007"
    end
  end

  def feedback13
  	require "rubygems"
    require "google_drive"

  end 

  def about
  end 

  def alum
  end

end

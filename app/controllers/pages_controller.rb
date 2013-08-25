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
        session = GoogleDrive.login("hanhn307@gmail.com", "qaz1wsx2edc")
        @ws = session.spreadsheet_by_key("0At6a2hDBOViTdFJ1eVhmWERMbG9saU9kVVVoaVJ1MXc").worksheets[0]
  end 

  def about
  end 

  def alum
  end

end

class ApplicationController < ActionController::Base
  protect_from_forgery
  require 'themoviedb'

  before_filter :login_required
  before_filter :set_config
  Tmdb::Api.key("ae7d3ccc0f2719f7e381467f65647d18")

  def set_config
    @configuration = Tmdb::Configuration.new
  end

  def login_required
    if session[:user]
      return true
    end
    flash[:warning]='Please login to continue'
    session[:return_to]=request.request_uri
    redirect_to :controller => "user", :action => "login"
    return false
  end

  def current_user
    session[:user]
  end
end

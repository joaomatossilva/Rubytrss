class ApplicationController < ActionController::Base
  protect_from_forgery
  require 'themoviedb'

  before_filter :set_config
  Tmdb::Api.key("ae7d3ccc0f2719f7e381467f65647d18")

  def set_config
    @configuration = Tmdb::Configuration.new
  end
end

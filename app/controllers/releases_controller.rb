class ReleasesController < ApplicationController
  def index
    moviesFeed = MoviesFeed.new()
    feed = moviesFeed.get_movies
    @movies = feed['MovieList']
  end

  def list_help
    moviesFeed = MoviesFeed.new()
    feed = moviesFeed.get_movies
    render :json => feed
  end
end

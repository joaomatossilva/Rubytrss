class HomeController < ApplicationController
  def index

  end

  def list
    moviesFeed = MoviesFeed.new()
    feed = moviesFeed.get_movies
    @movies = feed['MovieList']
    #render :json => feed["MovieList"]
  end

  def list_help
    moviesFeed = MoviesFeed.new()
    feed = moviesFeed.get_movies
    render :json => feed
  end
end

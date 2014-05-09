class ReleasesController < ApplicationController
  def show
    moviesFeed = MoviesFeed.new()
    feed = moviesFeed.get_movies
    @movies = feed['MovieList']

    hashes = @movies.map do |m|
      m["TorrentHash"]
    end

    myReleases = Release.find(hashes)

    @movies.each do |m|
      m["Dowloaded"] = myReleases.any? {|r| r._id == m["TorrentHash"]}
    end
  end

  def list_help
    moviesFeed = MoviesFeed.new()
    feed = moviesFeed.get_movies
    render :json => feed
  end

  def create
    release = Release.new(params[:release])
    release.date = DateTime.now
    release.save()
    render :text => params.inspect
  end
end

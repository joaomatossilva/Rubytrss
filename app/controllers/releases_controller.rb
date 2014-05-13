class ReleasesController < ApplicationController
  def show
    moviesFeed = MoviesFeed.new()
    feed = moviesFeed.get_movies
    @movies = feed[:movies]

    hashes = @movies.map do |m|
      m.hash
    end

    myReleases = Release.all(:hash => hashes )

    unless myReleases.nil?
      @movies.each do |m|
        m.downloaded = myReleases.any? {|r| r.hash == m.hash}
      end
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

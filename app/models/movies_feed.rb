class MoviesFeed
  include HTTParty
  base_uri 'https://yts.re/api/list.json'
  ssl_version :SSLv23
  format :json


  def get_movies(options = {})
    response = self.class.get('?sort=peers&quality=720p', options)
    { :total => response["MovieCount"], :movies => response["MovieList"].map do |m|
        movie = Release.new()
        movie.hash = m["TorrentHash"]
        movie.movie_title = m["MovieTitleClean"]
        movie.release_title = m["MovieTitleClean"]
        movie.cover = m["CoverImage"]
        movie.year = m["MovieYear"]
        movie.quality = m["Quality"]
        movie.size = m["Size"]
        movie.imdb = m["ImdbCode"]
        movie.date_uploaded = m["DateUploaded"]
        movie.url = m["TorrentUrl"]
        movie.externalId = m["MovieID"]
        movie
      end
    }
  end
end
class MoviesFeed
  include HTTParty
  base_uri 'https://yts.re/api/list.json'
  ssl_version :SSLv23
  format :json


  def get_movies(options = {})
    self.class.get('?sort=peers&quality=720p', options)
  end
end
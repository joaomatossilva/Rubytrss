class Release
  include MongoMapper::Document

  key :hash, String
  key :movie_title, String
  key :release_title, String
  key :cover, String
  key :year, Integer
  key :quality, String
  key :size, String
  key :imdb, String
  key :date_uploaded, DateTime
  key :downloaded
  key :url, String
  key :externalId, String
  key :date, DateTime

end

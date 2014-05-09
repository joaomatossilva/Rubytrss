class Release
  include MongoMapper::Document

  key :_id, String
  key :name, String
  key :date, DateTime
  key :url, String
  key :externalId, String

end

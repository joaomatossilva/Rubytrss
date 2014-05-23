xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Ruby Trrs"
    xml.link releases_url

    @items.each { |release_item|
      xml.item do
        xml.title release_item.movie_title
        xml.pubDate release_item.date.to_s(:rfc822)
        xml.link release_item.url
        xml.guid release_item.url
      end
    }
  end
end
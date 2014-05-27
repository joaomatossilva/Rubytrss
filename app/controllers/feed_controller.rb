class FeedController < ApplicationController
  layout false

  def index
    @items = Release.sort(:last_name.desc).limit(10)
    #render :rss => @items, :layout => false, :type => :builder
    respond_to do |format|
      format.rss { render :layout => false }
    end
  end
end

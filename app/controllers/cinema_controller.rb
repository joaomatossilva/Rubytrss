class CinemaController < ApplicationController
  def index
  end

  def top_rated
    @top_rated = Tmdb::Movie.top_rated
    render :partial=>'top_rated'
  end

  def popular
    @popular = Tmdb::Movie.popular
    render :partial=>'popular'
  end

  def now_playing
    @now_playing = Tmdb::Movie.now_playing
    render :partial=> 'now_playing'
  end
end

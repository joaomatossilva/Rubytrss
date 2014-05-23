class MoviesController < ApplicationController
  def is_numeric?(obj)
    obj.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil ? false : true
  end

  def show
    if is_numeric? params[:id]
      id = Integer(params[:id])
    else
      find_results = Tmdb::Find.imdb_id(params[:id])
      found_movie = find_results["movie_results"][0]
      id = found_movie["id"]
    end

    @movie = Tmdb::Movie.detail(id)
    @images = Tmdb::Movie.images(id)['posters']
    @cast = Tmdb::Movie.casts(id)
    @trailers = Tmdb::Movie.trailers(id)
  end
end

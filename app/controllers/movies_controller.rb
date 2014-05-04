class MoviesController < ApplicationController
  def show
    find_results = Tmdb::Find.imdb_id(params[:id])
    found_movie = find_results["movie_results"][0]
    id = found_movie["id"]

    @movie = Tmdb::Movie.detail(id)
    @images = Tmdb::Movie.images(id)['posters']
    @cast = Tmdb::Movie.casts(id)
    @trailers = Tmdb::Movie.trailers(id)
  end
end

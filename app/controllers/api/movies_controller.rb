class Api::MoviesController < ApplicationController
  def display_all
    @movies = Movie.all

    render 'movie.json.jb'
  end
  
  def display_first_movie
    @movie = Movie.first

    render 'first_movie.json.jb'
  end
  
  def display_first_five_movies
    @movies = Movie.limit(5)

    render 'first_five.json.jb'
  end
end

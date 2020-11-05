class Api::MoviesController < ApplicationController
  def show
    input = params["id"]
    @movie = Movie.find_by(id: input)
    render 'show.json.jb'
  end

  def index
    @movies = Movie.all 
    render 'index.json.jb'
  end

  def create
    @movie = Movie.new ({
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
      director: params["director"],
      english: params["english"],
    })
    @movie.save
    render 'show.json.jb'
  end

  def update
    input = params["id"]
    @movie = Movie.find_by(id: input)

    @movie.title = params["title"] || @movie.title
    @movie.year = params["year"] || @movie.year
    @movie.plot = params["plot"] || @movie.plot
    @movie.director = params["director"] || @movie.director
    @movie.english = params["english"] || @movie.english
    
    @movie.save
    render 'show.json.jb'
  end

  def destroy
    input = params["id"]
    @movies = Movie.find_by(id: input)
    @movies.destroy
    render json: {message: "Movie removed!"}
  end
end

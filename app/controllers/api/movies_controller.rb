class Api::MoviesController < ApplicationController
  def show
    input = params["id"]
    @movies = Movie.find_by(id: input)
    render 'show.json.jb'
  end

  def index
    @movies = Movie.all 
    render 'index.json.jb'
  end

  def create
    @movies = Movie.new ({
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
      director: params["director"],
      english: params["english"],
    })
    @movies.save
    render 'show.json.jb'
  end

  def update
    input = params["id"]
    @movies = Movie.find_by(id: input)

    @movies.title = params["title"] || @movie.title
    @movies.year = params["year"] || @movie.year
    @movies.plot = params["plot"] || @movie.plot
    @movies.director = params["director"] || @movie.director
    @movies.english = params["english"] || @movie.english
    
    @movies.save
    render 'show.json.jb'
  end

  def destroy
    input = params["id"]
    @movies = Movie.find_by(id: input)
    @movies.destroy
    render json: {message: "Movie removed!"}
  end
end

class Api::MoviesController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def show
    input = params["id"]
    @movie = Movie.find_by(id: input)
    # render "show.json.jb"
    render "show.html.erb"
  end

  def index
    @movies = Movie.where("english = true")
    render "index.json.jb"
  end

  def create
    @movie = Movie.new ({
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
      director: params["director"],
      english: params["english"],
    })
    if @movie.save
      render "show.json.jb"
    else
      render json: { errors: @movie.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def update
    input = params["id"]
    @movie = Movie.find_by(id: input)

    @movie.title = params["title"] || @movie.title
    @movie.year = params["year"] || @movie.year
    @movie.plot = params["plot"] || @movie.plot
    @movie.director = params["director"] || @movie.director
    @movie.english = params["english"] || @movie.english

    if @movie.save
      render "show.json.jb"
    else
      render json: { errors: @movie.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def destroy
    input = params["id"]
    @movies = Movie.find_by(id: input)
    @movies.destroy
    render json: { message: "Movie was removed!" }
  end
end

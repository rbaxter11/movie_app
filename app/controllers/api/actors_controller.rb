class Api::ActorsController < ApplicationController

  def show
    input = params["id"]
    @actor = Actor.find_by(id: input)
    render 'show.json.jb'
  end

  def index
    @actor = Actor.order(age: :desc)
    render 'index.json.jb'
  end

  def create
    @actor = Actor.new ({
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"],
      gender: params["gender"],
      age: params["age"],
    })
    if @actor.save
      render 'show.json.jb'
    else
      render json: { errors: @actor.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    input = params["id"]
    @actor = Actor.find_by(id: input)

    @actor.first_name = params["first_name"] || @actor.first_name
    @actor.last_name = params["last_name"] || @actor.last_name
    @actor.known_for = params["known_for"] || @actor.known_for
    @actor.gender = params["gender"] || @actor.gender
    @actor.age = params["age"] || @actor.age
    
    if @actor.save
      render 'show.json.jb'
    else
      render json: { errors: @actor.errors.full_messages }, status: :unprocessable_entity
    end
  end
    
  def destroy
    input = params["id"]
    @actor = Actor.find_by(id: input)
    @actor.destroy
    render json: {message: "Actor removed!"}
  end
end

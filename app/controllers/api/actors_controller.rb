class Api::ActorsController < ApplicationController

  def display_an_actor
    @actor = Actor.find_by(id: 5)
    
    render "actor.json.jb"
  end

  def display_actor
    input = params["id"]
    @output = Actor.find_by(id: input)
    render 'actor.json.jb'
  end
end

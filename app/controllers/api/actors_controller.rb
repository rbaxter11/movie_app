class Api::ActorsController < ApplicationController

  def display_an_actor
    @actor = Actor.find_by(id: 5)
    
    render "actor.json.jb"
  end
end

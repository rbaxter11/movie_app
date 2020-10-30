Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actor" => "actors#display_an_actor"
    get "/all_movies" => "movies#display_all"
    get "/first_movie" => "movies#display_first_movie"
    get "/first_five" => "movies#display_first_five_movies"
    get "/actorQ" => "actors#display_actor"
    get "/actorU/:id" => "actors#display_actor"
    post "/actorB" => "actors#display_actor"
  end
end

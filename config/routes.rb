Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  root 'events#index'

  controller :events do
    get '/events', action: :index, as: :events
    post '/events', action: :create
    get '/events/new', action: :new, as: :new_event
  end

  resources :literatures
  #
  # controller :literatures do
  #   get '/literatures', action: :index, as: :literatures
  #   get '/literatures/:id', action: :show, as: :literature
  # end

  controller :things do
    get '/things', action: :index, as: :things
    get '/things/:id', action: :show, as: :thing
  end

  controller :people do
    get '/people', action: :index, as: :people
    get '/people/:id', action: :show, as: :person
  end
end

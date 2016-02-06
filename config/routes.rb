Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  root 'home#index'

  controller :literatures do
    get '/literatures', action: :index, as: :literatures
    get 'literatures/:id', action: :show, as: :literature
  end

  controller :things do
    get '/things', action: :index, as: :things
    get 'things/:id', action: :show, as: :thing
  end

  controller :people do
    get '/people', action: :index, as: :people
    get 'people/:id', action: :show, as: :person
  end
end

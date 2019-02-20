Rails.application.routes.draw do
  devise_for :users
  # devise_for :users
  root to:"rosters#index"
  get "/new", to:"rosters#new"
  post "/create", to:"rosters#create"
  delete "/rosters/:id" , to:"rosters#destroy"
  get "/rosters/:id/edit", to:"rosters#edit"
  patch "/rosters/:id", to:"rosters#update"
  get "/categories/:id", to:"categories#show"
end

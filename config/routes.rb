Rails.application.routes.draw do
  # get 'people/index'
  # resources :users
# get "/" => "users#index"
#   get "/users/new" => "users#new"
#   post "/users/create" => "users#create"
  get "/" => "people#index"
    get "/people/new" => "people#new"
    post "/people/create" => "people#create"
  # if Rails.env.development?
  #     mount LetterOpenerWeb::Engine, at: '/letter_opener'
  #   end
  # devise_for :users
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

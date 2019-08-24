Rails.application.routes.draw do

  post "likes/:post_id/create" => "likes#create"
  post "likes/:post_id/destroy" => "likes#destroy"

  get "/login" => "users#login_form"
  get "/signup" => "users#new"
  get "users/index" => "users#index"
  get "users" => "users#index"
  get "users/:id" => "users#show"
  get "users/:id/edit" => "users#edit"
  
  post "users/create" => "users#create"
  post "users/:id/update" => "users#update"
  post "/login" => "users#login"
  post "/logout" => "users#logout"
  
  get "posts/new" => "posts#new"
  get "posts/index" => "posts#index"
  get "posts" => "posts#index"
  get "posts/:id" => "posts#show"
  get "posts/:id/edit" => "posts#edit"

  post "posts/create" => "posts#create"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

  get "home/top" => "home#top"
  get "/top" => "home#top"
  get "home/about" => "home#about"
  get "/about" => "home#about"


end


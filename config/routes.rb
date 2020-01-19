Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # devise_for :users do
  #   get '/users/sign_out' => sign_out :user
  # end

  resources :posts
  root "home#index"
end

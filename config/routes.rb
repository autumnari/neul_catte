Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'teasers#index'

  resources :main, only: [:index]
  resources :posts, only: [:index]
  resources :tapes
  resources :dailies
  resources :my_pages

  get 'main/sign_up'

end

Rails.application.routes.draw do
  get 'records/new'

  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'main#index'

  resources :musics
  resources :main
  resources :posts, only: [:index]
  resources :tapes
  resources :dailies
  resources :my_pages
  resources :records do
    get 'add/:id', :to => "records#add", as: 'add', on: :collection
  end

  get 'teasers/index'
  get 'main/about'

end

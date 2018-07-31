Rails.application.routes.draw do

  namespace :api, defaults: {format: 'json'} do
    resources :location, only: [:create]
  end

  devise_for :users
  get 'position/getPosition', to: 'position#getPosition', as: 'get_position'
  get 'map/show', to: 'map#show', as: 'show_map'
  get 'position/save', to: 'position#save' 
  get 'position/index', to: 'position#index', as: 'index_position'

  root 'position#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users
  get 'position/getPosition', to: 'position#getPosition'
  get 'position/save', to: 'position#save'

  root 'position#getPosition'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

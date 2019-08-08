Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'users/show'
  get 'welcome/:first_name', to: 'static#welcome',as: 'welcome'
  get 'contact', to:'static#contact'
  get 'team', to:'static#team'
  get 'gossips/new/success', to: 'static#gossip_creation_success'
  resources :gossips
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

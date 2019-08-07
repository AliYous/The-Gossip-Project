Rails.application.routes.draw do
  get 'welcome/:first_name', to: 'static#welcome'
  get 'contact', to:'static#contact'
  get 'team', to:'static#team'
  resources :gossips, except: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

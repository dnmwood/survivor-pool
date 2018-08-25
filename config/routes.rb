Rails.application.routes.draw do
  resources :owner

  root 'owner#index'
  get 'home', :to => "owner#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

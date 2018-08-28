Rails.application.routes.draw do
  resources :owner, :only => [:new, :create, :index, :show, :destroy] do
    resources :teams, :only => [:new, :create, :index, :show, :destroy] do
      resources :players, :only => [:new, :create, :index, :show, :destroy]
    end
  end

  root 'owner#index'
  get 'home', :to => "owner#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

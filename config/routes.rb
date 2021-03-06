Rails.application.routes.draw do
  
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "sessions", only: [:create]

  resources :users, controller: "users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"
  root to: "messages#index"
  
  resources :messages, only: [:index, :create]

  mount ActionCable.server => '/cable'

  unless Rails.application.config.consider_all_requests_local
  	get '*path', to: 'errors#render_routing_error', via: :all
  end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

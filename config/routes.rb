Rails.application.routes.draw do
  
  root to: "messages#index"
  
  resources :messages, only: [:index, :create]

  mount ActionCable.server => '/cable'

  unless Rails.application.config.consider_all_requests_local
  	get '*path', to: 'errors#render_routing_error', via: :all
  end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

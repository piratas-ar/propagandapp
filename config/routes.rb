Rails.application.routes.draw do
  resources :propagandas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount ActionCable.server, at: '/cable'
end

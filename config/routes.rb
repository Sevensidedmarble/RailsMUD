Rails.application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions

  get 'play', to: 'worlds#show', as: 'play'
  get '/' => redirect('play')
  
  mount ActionCable.server => '/cable'
  # match "/telnet" => TelnetSinatra
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

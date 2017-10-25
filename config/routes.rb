Rails.application.routes.draw do
	devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  resources :users
  root to: 'home#index'
  get 'home' => 'home#index'
  namespace :api, defaults: { format: :json } do
    resources :quotes, only: [ :show ]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

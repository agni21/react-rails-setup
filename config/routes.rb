Rails.application.routes.draw do
  get 'home' => 'home#index'
  namespace :api, defaults: { format: :json } do
    resources :quotes, only: [ :show ]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  match '*all', to: 'application#preflight', via: [:options]

  get 'current_user', to: 'application#current_user'
  get 'request_token', to: 'tokens#request_token'
  get 'access_token', to: 'tokens#access_token'
  get 'client_token', to: 'tokens#client_token'

  resources :blabs, only: [:index, :create, :show]

  match '*all', to: 'application#index', via: [:get]
end

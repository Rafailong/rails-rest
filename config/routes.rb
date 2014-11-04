JsonApi::Application.routes.draw do
  resources :movies, only: [:index]
  resources :users, only: [:index]
  # root to: 'static_pages#index'
end

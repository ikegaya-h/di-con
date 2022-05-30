Rails.application.routes.draw do
  root 'home#index'

  namespace :api do
    resources :desks
    resources :sessions
    resources :users do
      collection do
        get 'me'
      end
    end
  end

  get '*path', to: 'home#index'
end

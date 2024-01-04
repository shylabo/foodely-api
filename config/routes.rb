Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'api/v1/auth/registrations'
      }

      namespace :auth do
        resources :sessions, only: %i[index]
      end

      resources :allergies
      resources :categories
      resources :cities
      resources :countries
      resources :restaurants

      get "up" => "rails/health#show", as: :rails_health_check
    end
  end
end

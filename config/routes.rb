Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :allergies
      resources :categories
      resources :cities
      resources :countries

      get "up" => "rails/health#show", as: :rails_health_check
    end
  end
end

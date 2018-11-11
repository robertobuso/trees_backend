Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :trees, only: [:index, :show]
    end
  end
end

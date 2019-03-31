Rails.application.routes.draw do
  get "/api/v1/paintings", to: "get_paintings#paintings"


	namespace :api do
    namespace :v1 do
      resources :paintings

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
end

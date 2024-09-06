Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get "/api/v1/posters", to: "api/v1/posters#index"
  get "/api/v1/posters/:id", to: "api/v1/posters#show"
  post "/api/v1/posters", to: "api/v1/posters#create"
  patch "/api/v1/posters/:id", to: "api/v1/posters#update"
  delete "/api/v1/posters/:id", to: "api/v1/posters#destroy"

  # get "/api/v1/posters?sort=asc", to: "api/v1/posters#index"
  # get "/api/v1/posters?sort=desc", to: "api/v1/posters#index"

  # get "/api/v1/posters?name=ter", to: "api/v1/posters#index"
#   get "/api/v1/posters?min_price=50", to: "api/v1/posters#index"
#   get "/api/v1/posters?max_price=150", to: "api/v1/posters#index"
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
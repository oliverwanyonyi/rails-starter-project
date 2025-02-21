Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"

  # crud action routes

  # route to fetch and display all products
  get "/products", to: "product#index"

# route to load form for creating new product
get "/products/new", to: "products#new"

# route to store product data
post "/products", to: "products#create"

# route for viewing single product
get "/products/:id", to: "products#show"

# route to load form for editing a particular product
get "/products/:id/edit", to: "products#edit"
# route to update a product
patch "/products/:id", to: "products#update"
put "/products/:id", to: "products#update"
# route to delete product
delete "/products/:id", to: "products#destroy"
end

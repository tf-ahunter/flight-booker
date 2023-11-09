Rails.application.routes.draw do
  resources :flights
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  #get "up" => "rails/health#show", as: :rails_health_check
  get "home", to: "home#home"
  root to: "flights#search"
  get "flights", to: "flights#flights"
  get "search", to: "flights#search"
  #post "/", to: "bookings#new", :as => 'bookings'
  #patch "booking.:id", to: "bookings#update"
  #get "booking", to: "bookings#create"


  resources :bookings

  #post "booking", to: "booking#create"
  #resources :bookings
  # Defines the root path route ("/")
  # root "posts#index"
  #testtestetsetstsetset
end

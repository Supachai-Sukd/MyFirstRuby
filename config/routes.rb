Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

 # root to: "application#hello_world"

  root to: "application#health"
  get 'static/home', to: 'static#home'
  post 'static/home', to: 'static#home'
  # match กับ via ต้องใช้คู่กัน
  match 'static/home', to: 'static#home', via: [:put, :patch, :delete]


end

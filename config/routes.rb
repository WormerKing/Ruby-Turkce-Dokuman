Rails.application.routes.draw do
  root "home#index"

  get "/sinif/:name",to:"metot#find_sinif"

  get "/login",to:"session#login"
  post "/login",to:"session#login_post"

  get "/loyout",to:"session#loyout"

  resources :user
  resources :metot,only:[:new,:create,:destroy,:edit]

end

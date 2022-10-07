Rails.application.routes.draw do
  root "froms#index"

 resources :froms

 get "/froms/:id", to: "froms#show"
end

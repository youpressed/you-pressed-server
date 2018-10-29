Rails.application.routes.draw do
  jsonapi_resources :nodes
  jsonapi_resources :edges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

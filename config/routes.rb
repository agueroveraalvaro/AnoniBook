Rails.application.routes.draw do

  resources :messages
=begin
  get "/messages"
  post "/messages"
  delete "/messages"
  get "/messages/:id"
  get "/messages/new"
  patch "/messages//edit"
  put "/messages/:id"
=end

  root "welcome#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

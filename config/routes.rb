Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'map#index'
  get 'map/new' => 'map#new',as: :map_new
  post 'map/create' => 'map#create',as: :map_create
end

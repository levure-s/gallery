Rails.application.routes.draw do
  get 'exhibit/index' => "exhibit#index"
  get "exhibit/new" => "exhibit#new"
  get "exhibit/:id" => "exhibit#show"
  post "exhibit/create" => "exhibit#create"
  get "exhibit/:id/edit" => "exhibit#edit"
  post "exhibit/:id/update" => "exhibit#update"
  post "exhibit/:id/destroy" => "exhibit#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

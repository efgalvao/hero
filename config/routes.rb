Rails.application.routes.draw do
  root 'pages#home'
  resources :comments
  get 'pages/info'
  resources :personas
  get '/search' => 'pages#search', :as => 'search_page'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

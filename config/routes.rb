Rails.application.routes.draw do
  root 'pages#home'
  resources :comments
  get 'pages/info'
  resources :personas

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

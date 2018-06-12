Rails.application.routes.draw do
  root   'pages#home'
  get    '/help',                 to: 'pages#help'
  resources :cities,          only: [:create, :destroy]
end

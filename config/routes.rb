Rails.application.routes.draw do
  root   'pages#home'
  get    '/help',                 to: 'pages#help'
  resources :microposts,          only: [:create, :destroy]
end

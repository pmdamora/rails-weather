Rails.application.routes.draw do
  root   'pages#home'
  get    '/help',    to: 'pages#help'
end

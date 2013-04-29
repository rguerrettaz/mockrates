Mockrates::Application.routes.draw do

  resources :github_sessions, only: [:new]
  root :to => 'users#show'
  resources :users
  resources :challenges
  resources :sessions
  resources :attempts
  resources :weeks

  match '/login', to: 'sessions#new'
  match 'auth/:provider/callback', to: 'github_sessions#create'
  match '/test', to: 'challenges#test'
  match '/test2', to: 'challenges#test2'
  match '/challenges/:id/interactive', to: 'challenges#interactive'
  match '/locale/en.xml', to: 'locale#en'

  match '/db/mysql/datatypes.xml', to: 'db#datatypes'
end

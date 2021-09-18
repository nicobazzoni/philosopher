Rails.application.routes.draw do
 
  resources :drawings
  resources :todos
 
  resources :users
  resources :philosophers
  resources :thoughts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

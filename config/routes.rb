
Rails.application.routes.draw do
  resources :users
  resources :todos
  resources :philosophers, only: [:index, :create, :destroy, :update]
  resources :branches, only: [:index]
      # I do not want others to delete categories 
  
end
Rails.application.routes.draw do
  
  root "homes#index"

  resources :contacts, only: [:new, :create] 

  # get 'contacts/new'

  # get 'contacts/create'


end
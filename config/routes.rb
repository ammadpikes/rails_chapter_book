Rails.application.routes.draw do  
  
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/help'
  get 'sessions/new' 
  post 'sessions/create'
  delete 'sessions/destroy'

  resources :users

end

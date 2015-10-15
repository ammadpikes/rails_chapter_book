Rails.application.routes.draw do  
  root 'static_pages#home'
  resource :static_pages do
    get :about
    get :contact
    get :help
  end
end

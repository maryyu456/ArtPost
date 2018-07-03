Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  
  resources :artworks

  root "pages#index"
end

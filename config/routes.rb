Rails.application.routes.draw do
  get 'welcome/index'

  resources :photographers
  resources :photos
  resources :articles
  resources :venues
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

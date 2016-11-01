Rails.application.routes.draw do
  resources :answers
  root to: 'home#index'
  devise_for :users
  resources :doubts do
  	resources :offers
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

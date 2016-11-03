Rails.application.routes.draw do
  resources :answers
  root to: 'home#index'
  devise_for :users
  resources :doubts do
  	resources :offers do
	  	member do
	  		get :accept_offer
	  	end
	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
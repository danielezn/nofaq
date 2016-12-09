Rails.application.routes.draw do

  root to: 'home#index'

  devise_for :users

  get 'dashboard/index'

  resources :doubts do
    resources :answers
    collection do
      get :mine
    end
  	resources :offers do
	  	member do
	  		get :accept_offer
	  	end
	  end
  end

end
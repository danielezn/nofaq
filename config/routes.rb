Rails.application.routes.draw do

  root to: 'home#index'
  get 'dashboard/index'
  devise_for :users

  resources :doubts do
    resources :answers
    collection do
      get :mine
      post :search
    end
  	resources :offers do
	  	member do
	  		get :accept_offer
	  	end
	  end
  end

end
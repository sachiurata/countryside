Rails.application.routes.draw do
  root to: "home#index"
  
  devise_for :users, :controllers => {
    :confirmations => 'users/confirmations',
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords'
   }
   
  resources :user_profiles
  
  resources :posts, except: [:new, :create]
  resources :posts_region
  resources :posts_business
  
  resources :post do
     resources :comments, except: [:show, :index]
  end
  
  resources :favorites, only: [:create, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

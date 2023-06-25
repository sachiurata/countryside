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
  
  resources :accounts, only: [:show]
  
  resources :tag_post_regions
  # get '/admin/tag/post_regions/new', to: 'tag_post_regions#new'
  # get '/admin/tag/post_regions', to: 'tag_post_regions#show'
  # post '/admin/tag/post_regions', to: 'tag_post_regions#create'
  # get '/admin/tag/post_regions/edit', to: 'tag_post_regions#edit'
  # patch '/admin/tag/post_regions', to: 'tag_post_regions#update'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

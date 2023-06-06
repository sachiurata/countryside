Rails.application.routes.draw do
  root to: "home#index"
  
  devise_for :users, :controllers => {
    :confirmations => 'users/confirmations',
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords'
   }
   
  resources :user_profiles
  
  # resources :posts
  Rails.application.routes.draw do
  get 'posts', to: 'posts#index'
  post 'posts', to: 'posts#create'
  get 'posts/new/1', to: 'posts#new_1', as: 'new_1_post'
  get 'posts/new/2', to: 'posts#new_2', as: 'new_2_post'
  get 'posts/:id/edit', to: 'posts#edit', as: 'edit_post'
  get 'posts/:id', to: 'posts#show', as: 'post'
  patch 'posts/:id', to: 'posts#update'
  put 'posts/:id', to: 'posts#update'
  delete 'posts/:id', to: 'posts#destroy'
end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

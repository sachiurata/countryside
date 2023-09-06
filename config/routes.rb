Rails.application.routes.draw do
  root to: "home#index"
  
  get 'about', to: 'about#show'
  
  devise_for :users, :controllers => {
    :confirmations => 'users/confirmations',
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords'
   }
   
  devise_for :admins 
  
  get "/names/new",                 to: "names#new",  as: "new_name"  
  post "/names",                    to: "names#create"
  get "/names/:id/edit",            to: "names#edit", as: "edit_name"
  
  get "user_profiles/profile_type", to: "user_profiles#profile_type"
  
  resources :user_profiles, except: [:new, :create, :edit]
  # プロフィールを編集する際、「地域側」「起業希望者」でフォームの表示内容を変えるためにeditアクションのみ分離
  get "user_profiles_region/:id/edit",    to: "user_profiles_region#edit",   as: "edit_user_profiles_region"
  get "user_profiles_business/:id/edit",  to: "user_profiles_business#edit", as: "edit_user_profiles_business"
  
  resources :posts, except: [:new, :create]
  resources :posts_region
  resources :posts_business
  
  resources :post do
     resources :comments, except: [:show, :index]
  end
  
  resources :favorites, only: [:create, :destroy]
  
  resources :accounts, only: [:show]

  scope :admins do
    resources :tag_post_regions, only: [:new, :index]
    resources :tag_post_businesses, only: [:new, :index]
    resources :category_resources, only: [:create, :edit, :update, :destroy]
    resources :category_issues, only: [:create, :edit, :update, :destroy]
    resources :category_markets, only: [:create, :edit, :update, :destroy]
    resources :category_features, only: [:create, :edit, :update, :destroy]
    resources :category_wants, only: [:create, :edit, :update, :destroy]
    resources :category_realizabilities, only: [:create, :edit, :update, :destroy]
    resources :category_earnest, only: [:create, :edit, :update, :destroy]
    resources :tag_profile_regions, only: [:new, :index]
    resources :tag_profile_businesses, only: [:new, :index]
    resources :category_about_regions, only: [:create, :edit, :update, :destroy]
    resources :category_incubations, only: [:create, :edit, :update, :destroy]
    resources :category_immigration_supports, only: [:create, :edit, :update, :destroy]
    resources :category_jobs, only: [:create, :edit, :update, :destroy]
    resources :category_skills, only: [:create, :edit, :update, :destroy]
    resources :category_interests, only: [:create, :edit, :update, :destroy]
  end
  
  resources :post_category_resources
  
  resources :messages, only: [:destroy]
  get 'messages/all', to: "messages#message_list"
  resources :users do
    member do
      resources :messages, only: [:create, :index]
    end
  end
  
  resources :articles
  
  get 'admins', to: "admin#show"
  

 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

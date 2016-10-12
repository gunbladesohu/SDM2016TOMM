Rails.application.routes.draw do   
 


  resources :analysts

  
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :paperposts
  get 'paperpost/show'
   get 'paperpost/draft'
 devise_scope :visitor do 
    root to: 'pages#home'
    match '/sessions/visitor', to: 'devise/sessions#create', via: :post
  end
  devise_for :visitors, controllers: { registrations: "registrations" }
  get 'page/home'

  get 'page/about'

  get 'page/contact'

  get 'home/about'

  get 'home/contact'




  resources :password_resets,     only: [:new, :create, :edit, :update]
  
  
  resources :sessions, only: [:new, :create, :destroy, :user_mailer]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users


  get 'page/home'
  get 'page/index'
  root 'page#index'



  # root   'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'

 




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :paper_authors
  resources :authors
  resources :evidence_methods
  resources :se_methods
  resources :methodologies
  resources :evidences
  resources :papers
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

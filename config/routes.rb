Rails.application.routes.draw do
 
  resources :paperposts
 devise_scope :visitor do 
    root to: 'page#home'
    match '/sessions/visitor', to: 'devise/sessions#create', via: :post
  end
  devise_for :visitors, controllers: { registrations: "registrations" }
  get 'page/home'

  get 'page/about'

  get 'page/contact'

  get 'home/about'

  get 'home/contact'

 
 
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :users
  get 'page/home'
 

 root   'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'

 




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
end

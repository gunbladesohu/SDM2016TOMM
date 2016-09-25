Rails.application.routes.draw do
 root 'books#index'
  resources :books
  resources :paper_authors
  resources :authors
  resources :evidence_methods
  resources :se_methods
  resources :methodologies
  resources :evidences
  resources :papers
  resources :users
  resources:sousuo1s
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

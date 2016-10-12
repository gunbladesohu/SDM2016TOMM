Rails.application.routes.draw do
  resources :uselesstables
 root 'books#index'
  # resources :books
  resources :paper_authors
  resources :authors
  resources :evidence_methods
  resources :se_methods
  resources :methodologies
  resources :evidences
  resources :papers
  resources :users
  resources:sousuo1s
 resources :books do
  collection do
    get 'newindex'
  end
end
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

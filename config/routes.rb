Rails.application.routes.draw do
  get 'welcome/home'
  get 'welcome/about'

  resources :articles
  root 'welcome#home'

  get 'signup', to: 'users#new'

  resources :users, except: [:new]
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

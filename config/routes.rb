Rails.application.routes.draw do
  get 'welcome/home'
  get 'welcome/about'

  root 'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

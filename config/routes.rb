Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :dog
   resources :fur
   resources :weather
   resources :character
   resources :issue
   resources :group
  root 'welcome#index'
end
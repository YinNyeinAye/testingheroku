Rails.application.routes.draw do
 
 get    '/search',   to: 'workspaces#search'
 post    '/search',   to: 'workspaces#search'
 resources :workspaces
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

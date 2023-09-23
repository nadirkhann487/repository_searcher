Rails.application.routes.draw do
  root to: 'github_repositories#index'
  get '/index', to: 'github_repositories#index', as: 'index'
  get '/github_repositories_search', to: 'github_repositories#search', as: 'github_repositories_search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

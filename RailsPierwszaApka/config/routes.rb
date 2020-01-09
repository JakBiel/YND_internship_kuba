Rails.application.routes.draw do
  get 'articles/show'
  get 'welcome/index'
  resources :articles
  root 'welcome#index'
end

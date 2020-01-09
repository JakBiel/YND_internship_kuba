Rails.application.routes.draw do
  get 'projects/show'
  get 'welcome/index'
  resources :projects
  root 'welcome#index'
end

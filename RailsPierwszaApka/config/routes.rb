Rails.application.routes.draw do
  get 'projects/show'

  get 'welcome/index'
  resources :projects, only [:index, :create, :show] do
    resources :to_do_list, only [:index, :create, :show] do
      resources :task, only [:index, :create, :show] do
        resources :comment, only [:index, :create, :show]
      end
    end
  end
  root 'welcome#index'
  
end

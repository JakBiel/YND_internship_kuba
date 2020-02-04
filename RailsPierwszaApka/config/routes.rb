Rails.application.routes.draw do
  #resources :widgets
  #get 'projects/show'

  #get 'welcome/index'
  resources :projects, only: [:index, :create, :show] do
    resources :to_do_lists, only: [:index, :create, :show] do
      resources :tasks, only: [:index, :create, :show, :update] do
        resources :comments, only: [:index, :create, :show]
      end
    end
  end
    #root 'welcome#index'

end

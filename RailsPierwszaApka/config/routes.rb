Rails.application.routes.draw do
  get 'projects/show'

  get 'welcome/index'
  resources :projects, only [:index, :new, :create, :show] do
    resources :to_do_list, only [:index, :new, :create, :show] do
      resources :task, only [:index, :new, :create, :show] do
        resources :comment, only [:index, :new, :create, :show]
      end
    end
  end
  root 'welcome#index'

  #usun wszedzie new
end

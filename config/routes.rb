Rails.application.routes.draw do
  get 'user/edit'

  get 'orders/new'

  get 'orders/create'

  get 'orders/show'

  get 'orders/index'

  # routing table
  root to: 'sections#index'
  get 'search' ,to: 'foods#index' 
  post 'ajax-hash', to: 'sections#send_hash'
  post 'orders/create', to: 'orders#create'
  
  resources :sections do
    resources :foods do
      get 'search'
    end
  end

  resources :user do
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

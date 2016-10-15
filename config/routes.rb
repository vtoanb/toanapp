Rails.application.routes.draw do
  get 'orders/new'

  get 'orders/create'

  get 'orders/show'

  get 'orders/index'

  # routing table
  root to: 'sections#index'
  get 'search' ,to: 'foods#index' 
  resources :sections do
    resources :foods do
      get 'search'
    end  	
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

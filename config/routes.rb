Rails.application.routes.draw do
  get 'sections/index'

  get 'sections/show'

  root to: 'foods#index'
  resources :sections do
    resources :foods do
    end  	
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

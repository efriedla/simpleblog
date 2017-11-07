Rails.application.routes.draw do

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root 'posts#index', as: 'home'
  get 'about' => 'pages#about', as: 'about'
  resources :posts do 
    resources :comments
  end

  resources :user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

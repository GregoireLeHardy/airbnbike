Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show, :new, :create] do
    resources :bikes do
      resources :bookings, only: [:show, :new, :create, :index, :edit]
      resources :addresses, only:[:show, :new, :create, :index, :edit]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


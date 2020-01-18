Rails.application.routes.draw do
  get 'bikes/index'
  get 'bikes/show'
  get 'bikes/new'
  get 'bikes/create'
  get 'bikes/edit'
  get 'bikes/update'
  get 'bikes/destroy'
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show, :new, :create] do
    resources :bikes do
      resources :bookings, only: [:show, :new, :create, :index, :edit]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


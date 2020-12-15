Rails.application.routes.draw do
  get 'dashboard' => 'dashboard#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  resources :members
  resources :groups
  resources :deals do
    resources :creditors
    resources :debtors
  end
  resources :users
  root 'sessions#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'dashboard/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :members
  resources :groups
  resources :deals do
    resources :creditors
    resources :debtors
  end
  root to: 'account#index', as: 'account'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :members
  resources :groups
  resources :deals
  resources :creditors
  resources :debtors
  root to: 'account#index', as: 'account'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

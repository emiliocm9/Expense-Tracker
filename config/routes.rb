Rails.application.routes.draw do
  get 'months/index'
  get 'months/jan'
  get 'months/feb'
  get 'months/march'
  get 'months/april'
  get 'months/may'
  get 'months/june'
  get 'months/july'
  get 'months/aug'
  get 'months/sept'
  get 'months/nov'
  get 'months/dec'
  resources :sessions
  get 'login', to: 'sessions#new', as: 'login'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
  get 'external', to: 'expenses#external', as: 'external'
  get 'august', to: 'expenses#august', as: 'august'
  resources :expenses
  resources :groups
  resources :users
  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

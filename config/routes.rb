Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/create'
  get 'doses/edit'
  get 'doses/update'
  get 'doses/destroy'
  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses
  end
end

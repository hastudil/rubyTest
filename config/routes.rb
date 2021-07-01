Rails.application.routes.draw do
  resources :categories do
    resources :keywords, only: [:create, :update, :destroy]
  end
  resources :products
  resources :stores

  root 'welcome#index'
end

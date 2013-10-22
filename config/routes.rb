Ativa::Application.routes.draw do
  devise_for :users
  resources :posts
  root 'projects#index'
  resources :projects
    resources :subscriptions, only: [:create, :destroy]
  get 'users/:id' => 'users#show', as: 'user'
end
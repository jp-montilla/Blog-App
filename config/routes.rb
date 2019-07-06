Rails.application.routes.draw do
  resources :posts
  devise_for :views
  devise_for :admins, path: 'admins'
  root 'posts#index'

  get 'admins' => 'admin#index'
  get 'admins/new' => 'admin#new'
  post 'admins/admins_new' => 'admin#create'
  get 'admins/:id/edit' => 'admin#edit', as: "admins_edit"
  patch 'admins/:id/admin_update' => 'admin#update', as: "admin_update"
  delete 'admins/:id' => 'admin#destroy', as: "admins_delete"

  get 'register' => 'sign_up_user#new'
  post 'register/new_user' => 'sign_up_user#create'

  post 'posts/comment' => 'comment#create'

  get 'profile/:id' => 'profile#show', as: "profile"





end

Rails.application.routes.draw do
  devise_for :views
  devise_for :admins, path: 'admins'
  root 'home#index'

  get 'admins' => 'admin#index'
  get 'admins/new' => 'admin#new'
  post 'admins/admins_new' => 'admin#create'
  get 'admins/:id/edit' => 'admin#edit', as: "admins_edit"
  patch 'admins/:id/admin_update' => 'admin#update', as: "admin_update"
  delete 'admins/:id' => 'admin#destroy', as: "admins_delete"

  get 'register' => 'sign_up_user#new'
  post 'register/new_user' => 'sign_up_user#create'





end

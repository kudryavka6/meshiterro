Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
 root to: 'homes#top'
 devise_for :users
 resources :post_images, only: [:new, :index, :show, :create, :destroy]
 resources :users, only: [:show, :edit]
 get 'homes/about' => 'homes#about', as: 'about'
end

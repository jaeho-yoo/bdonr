Rails.application.routes.draw do
  
  devise_for :users
  root "posts#index"
  
  get 'posts/index'
  get 'posts/new'
  
  post 'posts/create'
  
  get 'posts/show'
  get 'posts/edit'
  get 'posts/update'
  get 'posts/destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

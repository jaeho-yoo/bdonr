Rails.application.routes.draw do
  
  devise_for :users
  
  # 랜딩페이지 컨트롤러 (home)
  root "home#landing"
  get 'home/landing'
  
  
  # 게시판 컨트롤러 (posts)
  get 'posts/index'
  get 'posts/new'
  
  post 'posts/create'
  
  get 'posts/show'
  get 'posts/edit'
  get 'posts/update'
  get 'posts/destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

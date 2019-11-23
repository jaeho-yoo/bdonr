Rails.application.routes.draw do
  
  # 건물 등록 컨트롤러 (buildings)
  get 'buildings/index'
  get 'buildings/new'
  post 'buildings/create'
  get 'buildings/show/:id' => "buildings#show"
  get 'buildings/edit/:id' => "buildings#edit"
  post 'buildings/update/:id' => "buildings#update"
  get 'buildings/destroy/:id' => "buildings#destroy"
  
  devise_for :users
  
  
  # 랜딩페이지 컨트롤러 (home)
  root "home#landing"
  get 'home/landing'
  
  
  # 게시판 컨트롤러 (posts)
  get 'posts/index'
  get 'posts/new'
  post 'posts/create'
  get 'posts/show/:id' => "posts#show"
  get 'posts/edit/:id' => "posts#edit"
  post 'posts/update/:id' => "posts#update"
  get 'posts/destroy/:id' => "posts#destroy"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

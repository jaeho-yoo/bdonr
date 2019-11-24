Rails.application.routes.draw do
  
  devise_for :users
  
  
  # 건물 등록 컨트롤러 (buildings)
  get 'buildings/buildings_index'
  get 'buildings/new'
  post 'buildings/create'
  get 'buildings/show/:id' => "buildings#show"
  get 'buildings/edit/:id' => "buildings#edit"
  post 'buildings/update/:id' => "buildings#update"
  get 'buildings/destroy/:id' => "buildings#destroy"
  
  
  # 방 등록 컨트롤러 (rooms)
  get 'rooms/rooms_index'
  get 'rooms/new'
  post 'rooms/create'
  get 'rooms/show/:id' => "rooms#show"
  get 'rooms/edit/:id' => "rooms#edit"
  post 'rooms/update/:id' => "rooms#update"
  get 'rooms/destroy/:id' => "rooms#destroy"
  
  
  # 랜딩페이지 컨트롤러 (home)
  root "home#landing"
  get 'home/landing'
  
  
  # 게시판 컨트롤러 (posts)
  get 'posts/posts_index'
  get 'posts/new'
  post 'posts/create'
  get 'posts/show/:id' => "posts#show"
  get 'posts/edit/:id' => "posts#edit"
  post 'posts/update/:id' => "posts#update"
  get 'posts/destroy/:id' => "posts#destroy"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

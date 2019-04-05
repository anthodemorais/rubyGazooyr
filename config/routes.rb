Rails.application.routes.draw do
  resources :news
  resources :gazooys
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :profiles
  resources :hash_tags
  resources :comments
  resources :follower_links
  resources :pages, param: :slug

  resources :gazooys, :path => 'gazooies'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/comments', :to => 'comments#create'
  get '/comments', :to => 'comments#index'
  get '/comments/new', :to => 'comments#new'
  get '/comments/:id', :to => 'comments#show'
  get '/comments/:id/edit', :to => 'comments#edit'
  put '/comments/:id', :to => 'comments#update'
  patch '/comments/:id', :to => 'comments#update'
  delete '/comments/:id', :to => 'comments#destroy'

  #get '/:slug', :to => 'pages#show'
  get '/pages/new', :to => 'pages#new'
  get '/pages/:slug', :to => 'pages#show'
  get '/pages/:slug/edit', :to => 'pages#edit'
  post '/pages', :to => 'pages#create'
  put '/pages/:slug', :to => 'pages#update'
  delete '/pages/:slug', :to => 'pages#destroy'
  #get '/:id', :to => 'pages#show'
  get '/pages/:id', :to => 'pages#show'
  get '/pages/:id/edit', :to => 'pages#edit'
  put '/pages/:id', :to => 'pages#update'
  delete '/pages/:id', :to => 'pages#destroy'

  get '/hash_tags/:id', :to => 'hash_tags#show'

  get '/profiles/:id', :to => 'profiles#show'
  get '/profiles/me', :to => 'profiles#show'
  get '/profiles/:id/edit', :to => 'profiles#edit'
  get '/profiles/me/edit', :to => 'profiles#edit'
  put '/profiles/:id', :to => 'profiles#update'
  post 'profiles/:profile_id/follow/:user_id', :to => 'profiles#follow'
  delete 'profiles/:profile_id/unfollow/:user_id', :to => 'profiles#unfollow'
  get 'profiles/:profile_id/followers', :to => 'profiles#followers'
  get 'profiles/:profile_id/followees', :to => 'profiles#followees'
  get 'profiles/:profile_id/mentions', :to => 'profiles#mentions'

  get '/news', :to => 'news#index'
  get '/news/new', :to => 'news#new'
  get '/news/:id', :to => 'news#show'
  get '/news/:id/edit', :to => 'news#edit'
  post '/news', :to => 'news#create'

  get '/gazooys', :to => 'gazooys#index', as: 'gazooies'
  get '/gazooys/new', :to => 'gazooys#new'
  get '/gazooys/:id', :to => 'gazooys#show'
  get '/gazooys/:id/edit', :to => 'gazooys#edit'
  post '/gazooys', :to => 'gazooys#create'
  put '/gazooys/:id', :to => 'gazooys#update'
  patch '/gazooys/:id', :to => 'gazooys#update'
  delete '/gazooys/:id', :to => 'gazooys#destroy'

  get '/follower_links', :to => 'follower_links#index'
  get '/follower_links/new', :to => 'follower_links#new'
  get '/follower_links/:id', :to => 'follower_links#show'
  get '/follower_links/:id/edit', :to => 'follower_links#edit'
  post '/follower_links', :to => 'follower_links#create'
  put '/follower_links/:id', :to => 'follower_links#update'
  patch '/follower_links/:id', :to => 'follower_links#update'
  delete '/follower_links/:id', :to => 'follower_links#destroy'

  get '/hash_tags', :to => 'hash_tags#index'
  get '/hash_tags/new', :to => 'hash_tags#new'
  get '/hash_tags/:id', :to => 'hash_tags#show'
  get '/hash_tags/:id/edit', :to => 'hash_tags#edit'
  post '/hash_tags', :to => 'hash_tags#create'
  put '/hash_tags/:id', :to => 'hash_tags#update'
  patch '/hash_tags/:id', :to => 'hash_tags#update'
  delete '/hash_tags/:id', :to => 'hash_tags#destroy'

  root 'welcome#index'
end

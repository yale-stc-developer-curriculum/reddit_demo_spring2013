RedditDemo::Application.routes.draw do
  resources :votes


  resources :comments


  resources :posts


  resources :users
  root to: 'users#index'
end
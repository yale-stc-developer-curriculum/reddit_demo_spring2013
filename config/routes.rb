RedditDemo::Application.routes.draw do
  match 'users/' => 'users#index'
  match 'users/:id' => 'users#show'
  root to: 'users#index'
end
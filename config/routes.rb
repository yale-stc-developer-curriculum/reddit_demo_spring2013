RedditDemo::Application.routes.draw do
  resources :comments

  resources :posts do
    member do
      get 'upvote'
      get 'downvote'
    end
  end


  resources :users

  root to: 'posts#index'

end
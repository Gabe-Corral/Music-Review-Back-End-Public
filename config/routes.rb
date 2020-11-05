Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  resources :user
  resources :artist
  resources :review
  resources :album
  resources :comment
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  get :writeReview, to: "review#writeReview"
  get :'getalbums/:id', to: "artist#getAlbums"
  get 'getcomments/:id', to: "review#getComments"
  get 'usercomments/:id', to: "comment#userComments"
  get 'userreviews/:id', to: "user#userReviews"
  get 'getuserinfo/:id', to: "review#getUserInfo"
  post 'followuser/:id', to: "user#followUser"
  get 'followers/:id', to: "user#getFollowers"
  get 'activityfeed/:id', to: "user#activityFeed"
end

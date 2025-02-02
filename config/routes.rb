Rails.application.routes.draw do
  resources :rooms
  root "pages#home"

  devise_for :users
  # get "/blog_posts/new", to: "blog_posts#new", as: :new_blog_post
  # get "/blog_posts/:id", to: "blog_posts#show", as: :blog_post
  # get "/blog_posts/:id/edit", to: "blog_posts#edit", as: :edit_blog_post
  # patch "/blog_posts/:id", to: "blog_posts#update"
  # delete "/blog_posts/:id", to: "blog_posts#destroy"
  # post "/blog_posts", to: "blog_posts#create", as: :blog_posts
  #
  resources :blog_posts do
    resources :cover_image, only: [:destroy], module: :blog_posts
  end
  # root "blog_posts#index"
end

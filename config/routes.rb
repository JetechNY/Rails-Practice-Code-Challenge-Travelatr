Rails.application.routes.draw do
  # get 'bloggers/new'

  # get 'bloggers/show'

  # get 'bloggers/index'

  # get 'bloggers/create'

  # get 'posts/new'

  # get 'posts/create'

  # get 'posts/edit'

  # get 'posts/update'

  # get 'posts/show'

  # get 'destinations/show'


  resources :bloggers, :posts, :destinations

  post 'posts/:id', to: 'posts#like', as: 'like'
end

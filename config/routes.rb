Rails.application.routes.draw do
  post 'comment/create'
  get 'user/articles'
  get 'article/create'

  devise_for :users
  root controller: :landing, action: :index
end

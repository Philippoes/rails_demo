Rails.application.routes.draw do
  post 'comment/create'
  get 'user/articles'
  get 'article/create'

  devise_for :users
  root controller: :landing, action: :index
  post :create_article, controller: :article, action: :create_article
end

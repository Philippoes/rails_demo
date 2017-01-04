Rails.application.routes.draw do
  get 'article/create'

  devise_for :users
  root controller: :landing, action: :index
  post :article_comment, controller: :landing, action: :article_comment
  post :create_article, controller: :landing, action: :create_article
end

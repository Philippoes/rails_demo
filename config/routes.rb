Rails.application.routes.draw do
  root controller: :landing, action: :index
  post :article_comment, controller: :landing, action: :article_comment
end

class UserController < ApplicationController
  before_action :authenticate_user!

  def articles
    @currentUser = User.find_by(id: current_user.id).email
    Binding.pry
    @userArticles = Article.find_by(author: @currentUser)
  end
end

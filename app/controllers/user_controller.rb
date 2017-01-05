class UserController < ApplicationController
  before_action :authenticate_user!

  def articles
    @currentUser = User.find_by(id: current_user.id)
    @userArticles = Article.find_by(user: @currentUser)
  end
end

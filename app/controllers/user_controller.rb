class UserController < ApplicationController
  before_action :authenticate_user!

  def articles
    @userArticles = current_user.articles
  end
end

class LandingController < ApplicationController
  def index
    @articles = Article.all
  end

  def article_comment
    if validate_email == false

    end
    else
    article = Article.find_by(id: params[:article])
    Comment.create(content: params[:comment], author: params[:email], article: article)
    redirect_to root_path
  end

  def validate_email
    if params[:email] == invalid
      return false
    else
      return true
    end
  end
end

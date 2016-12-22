class LandingController < ApplicationController
  def index
    @articles = Article.all
  end

  def article_comment
    article = Article.find_by(id: params[:article])
    Comment.create(content: params[:comment], author: params[:email], article: article)
    redirect_to root_path
  end
end

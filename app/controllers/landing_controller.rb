class LandingController < ApplicationController
  def index
    @articles = Article.all
  end

  def create_article
    article = Article.create(title: params[:title], content: params[:content], author: params[:author])
    redirect_to root_path
    if article.errors.any?
      article.errors.full_messages.each do |message|
        flash[:notice] = message
      end
    else
      flash[:notice] = "Article posted!"
    end
  end

  def article_comment
    article = Article.find_by(id: params[:article])
    kommentar = Comment.create(content: params[:comment], email: params[:email], article: article)
    redirect_to root_path
    if kommentar.errors.any?
      kommentar.errors.full_messages.each do |message|
      flash[:notice] = message
      end
    else
      flash[:notice] = "Comment posted!"
    end
  end
end


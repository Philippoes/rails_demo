class LandingController < ApplicationController
  def index
    @articles = Article.all
  end

  def create_article
    Article.create(title: params[:title], content: params[:content], author: params[:author])
    redirect_to root_path
  end

  def article_comment
    article = Article.find_by(id: params[:article])
    kommentar = Comment.create(content: params[:comment], email: params[:email], article: article)
    if kommentar.errors.any?
      redirect_to root_path
      kommentar.errors.full_messages.each do |message|
      flash[:notice] = message
      end
    else
      redirect_to root_path
      flash[:notice] = "Comment posted!"
    end
  end
end


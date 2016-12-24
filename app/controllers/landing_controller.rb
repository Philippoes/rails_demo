class LandingController < ApplicationController
  def index
    @articles = Article.all
  end

  def article_comment
    article = Article.find_by(id: params[:article])
    kommentar = Comment.create(content: params[:comment], author: params[:email], article: article)
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


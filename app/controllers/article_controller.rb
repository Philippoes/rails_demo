class ArticleController < ApplicationController
  def create_article
    article = Article.create(title: params[:title], content: params[:content], author: params[:author])
    redirect_to article_create_path
    if article.errors.any?
      article.errors.full_messages.each do |message|
        flash[:notice] = message
      end
    else
      flash[:notice] = "Article posted!"
    end
  end
end

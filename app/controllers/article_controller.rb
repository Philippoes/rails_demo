class ArticleController < ApplicationController
  before_action :authenticate_user!

  def create_article
    user = User.find_by(id: current_user.id)
    article = Article.create(title: params[:title], content: params[:content], user: user)
    redirect_to article_create_path
    if article.errors.any?
      article.errors.full_messages.each do |message|
        flash[:notice] = message
      end
    else
      flash[:notice] = "Article posted!"
    end
  end

  def delete
    Article.destroy(params[:article])
    flash[:notice] = "Article deleted!"
    redirect_to user_articles_path
  end
end

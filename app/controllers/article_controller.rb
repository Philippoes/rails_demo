class ArticleController < ApplicationController
  before_action :authenticate_user!

  def create_article
    author = User.find_by(id: current_user.id).email
    article = Article.create(title: params[:title], content: params[:content], author: author)
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

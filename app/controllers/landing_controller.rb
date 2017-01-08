class LandingController < ApplicationController
  def index
    @articles = Article.all
  end

  def article_comment
  end
end


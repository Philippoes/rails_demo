class CommentController < ApplicationController
  def create
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

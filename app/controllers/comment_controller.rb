class CommentController < ApplicationController
  before_action :authenticate_user!
  def create
    user = User.find_by(id: current_user.id)
    article = Article.find_by(id: params[:article])
    kommentar = Comment.create(content: params[:comment], email: user, article: article)
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

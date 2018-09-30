class CommentsController < ApplicationController
  before_action :require_unbanned
  def create
    @article = Article.find(params[:article_id])
    @comment = current_user.comments.build(comment_params)
    @comment.article = @article
    @comment.save
    redirect_to article_path(@article)
  end

  private
    def require_unbanned
      if current_user.banned == true
        flash[:error] = "You are banned from comments"
        @article = Article.find(params[:article_id])
        redirect_to article_path(@article)
      end
    end
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end

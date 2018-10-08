class CommentsController < ApplicationController
  before_action :set_article, :prevents_create_for_banned_user

  def create
    @comment = current_user.comments.build(comment_params)
    @comment.article = @article
    @comment.save

    redirect_to article_path(@article)
  end

  private

    def prevents_create_for_banned_user
      if current_user.banned?
        redirect_to article_path(@article), flash: { error: 'You are banned from comments' }
      end
    end

    def set_article
      @article = Article.find(params[:article_id])
    end

    def comment_params
      params.require(:comment).permit(:body)
    end
end

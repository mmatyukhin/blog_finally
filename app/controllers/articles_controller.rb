class ArticlesController < ApplicationController

  def index
      @articles = Article.order(created_at: :desc).page (params[:page])
  end

  def show
      @article = Article.find(params[:id])
  end

  def like
    @article = Article.find(params[:id])
    @article.liked_by current_user
    respond_to do |format|
        format.html { redirect_to :back }
        format.js { render layout: false }
    end
  end

  def unlike
    @article = Article.find(params[:id])
    @article.unliked_by current_user
    respond_to do |format|
      format.html { redirect_to :back }
      format.js { render layout: false }
    end
  end
end

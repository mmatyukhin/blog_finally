class ArticlesController < ApplicationController


  def index
      @articles = Article.all
  if params[:tag]
    @articles = Article.tagged_with(params[:tag])
    else
    @articles = Article.all
    end
    @articles = @articles.order(created_at: :desc).page params[:page]
  end

  def show
      @article = Article.find(params[:id])
  end
end

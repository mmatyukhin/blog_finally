class ArticlesController < ApplicationController

  def index
      @articles = Article.all
      @articles = @articles.order(created_at: :desc).page params[:page]
  end

  def show
      @article = Article.find(params[:id])
  end
end

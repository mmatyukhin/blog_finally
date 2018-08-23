class ArticlesController < ApplicationController

  def index
      @articles = Article.order(created_at: :desc).page (params[:page])
  end

  def show
      @article = Article.find(params[:id])
  end
end

class ArticlesController < ApplicationController
  def index
    @articles = Article.order(created_at: :desc).page params[:page]
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = current_user.articles.build(article_params)

    if @article.save
      binding.pry
      flash[:success] = "Article created!"
      redirect_to root_url
    else
      render 'new'
    end
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
  private

    def article_params
      params.require(:article).permit(:title, :text, :image, :category_id)
    end
end

class ArticlesController < ApplicationController
  RESULTS_PER_PAGE = 3
    def index
      @articles = Article.paginate(page: params[:page], per_page:(RESULTS_PER_PAGE))
    end
end

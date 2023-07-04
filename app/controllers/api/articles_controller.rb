class Api::ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :update, :destroy]

  def create
    article = Article.new(article_params)

    if article.save
      render json: { article: article.to_api_json }, status: :created
    else
      render json: { errors: article.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    render json: { article: @article.to_api_json }, status: :ok
  end

  def update
    if @article.update(article_params)
      @article.set_slug
      render json: { article: @article.to_api_json }, status: :ok
    else
      render json: { errors: @article.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    if @article.destroy
      head :no_content
    else
      render json: { errors: @article.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def set_article
    @article = Article.find_by(slug: params[:slug])
  end

  def article_params
    params.require(:article).permit(:title, :description, :body)
  end
end

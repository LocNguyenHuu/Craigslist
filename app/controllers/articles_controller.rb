class ArticlesController < ApplicationController
  before_action :require_user, except: [:index, :show]
  before_action :find_article, only: [:edit, :update, :show, :delete]
  before_action :authenticate, only: [:edit, :update, :destroy]

  def index
    @articles = Article.order(created_at: :asc)
  end

  def new
    @categories = Category.all
    @article = Article.new
  end

  def create
    @article = current_user.articles.new(article_params)

    if @article.save
      flash[:notice] = "Successfully created a new article!"
      redirect_to articles_path(@article)
    else
      flash[:alert] = "Error creating new article!"
      render 'new'
    end
  end

  def edit
    @categories = Category.all
  end

  def update
    if @article.update(article_params)
      flash[:notice] = "Succesfully updated article!"
      redirect_to articles_path(@article)
    else
      flash[:alert] = "Error updating article!"
      render 'edit'
    end
  end

  def show
  end

  def destroy
    if find_article.destroy
      flash[:notice] = "Successfully deleted article!"
      redirect_to articles_path
    else
      flash[:alert] = "Error deleting article!"
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :body, :category_id)
    end

    def find_article
      @article = Article.find(params[:id])
    end

    def authenticate
      @article = Article.find(params[:id])
      current_user.id == @article.user_id
    end
end

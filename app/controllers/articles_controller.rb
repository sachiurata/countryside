class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end
  
  def create
    @article = Article.create(article_params)
    
    if @article.save
      redirect_to action: :show, id: @article.id
    else
      @article = Article.new
      render "new", status: :unprocessable_entity
    end
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
  def index
    @articles = Article.all.order("updated_at DESC")
  end
  
  def edit
    @article = Article.find(params[:id])
  end
 
  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
     redirect_to action: :show, id: @article.id
    else
     render "articles/edit"  
    end
  end
 
  def destroy
    @article = Article.find(params[:id])
    if @article.destroy
      redirect_to action: :index, notice: "記事を削除しました"
    else
      render "articles/show", id: @article.id
    end
  end
 
 private
  def article_params
    params.require(:article).permit(:title, :content, :thumbnail)
  end
end

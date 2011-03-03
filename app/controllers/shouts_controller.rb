class ShoutsController < ApplicationController
  
  def new  
    @article = Article.new
  end
  
  def create
    @article = Article.new(params[:article])
    if @article.save
      redirect_to root_url, :notice => "The article has been created."
    else  
    flash.now[:notice] = 'The article requires a name and body.'
    render :new
  end
  end
  
  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
  end
end

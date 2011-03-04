class ShoutsController < ApplicationController
  def index
     @articles = Article.most_recent
   end
   
  def new  
    @article = Article.new
  end
  
  def create
    @article = Article.new(params[:article])
    if @article.save
      redirect_to shouts_url, :notice => "The article has been created."
    else  
    flash.now[:notice] = 'The article requires a name and body.'
    render :new
  end
  end
  
  def show
    @article = Article.find(params[:id])
    @comment = @article.comments.new
    @comments = @article.comments
  end
end

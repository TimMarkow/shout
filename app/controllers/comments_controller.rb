class CommentsController <ApplicationController
  def create
    @article = Article.find(params[:shout_id])
    @comment = @article.comments.new(params[:comment])
    @comment.save
    
    redirect_to shout_path(@article), :notice => "Your comment has been duly noted"
  end
end
class CommentsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comment.new
  end
  
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user_id = current_user.id
    
    if @comment.save
      redirect_to ({controller: :posts, action: :show, id: @post.id})
    else
      render ({controller: :posts, action: :show, id: @post.id}), notice:"コメントに失敗しました"  
    end
  end
  
  def edit
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.user_id = current_user.id
    if @comment.update(comment_params)
      redirect_to ({controller: :posts, action: :show, id: @post.id})
    else
      render ({controller: :posts, action: :show, id: @post.id}), status: :unprocessable_entity, notice:"コメントに失敗しました"  
    end
  end
  
  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    if @comment.destroy
      redirect_to ({controller: :posts, action: :show, id: @post.id}), status: :unprocessable_entity
    end
  end
  
  private
  def comment_params
    params.require(:comment).permit(:post_id, :content)
  end
end

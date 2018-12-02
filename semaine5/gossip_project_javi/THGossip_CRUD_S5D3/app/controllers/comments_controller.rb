class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    @comments = Gossip.find(params[:gossip_id]).comments 


  end

  def create
    new_comm = Comment.create(comment_params)
    redirect_to gossip_path(params[:gossip_id])
  end

  def edit
  end

  def index

  end
  def show
    @comment = Comment.find(params[:gossip_id])
  end

  def destroy
  end

  private
  def comment_params
    result = params.require(:comment).permit(:anonymous_commentor, :content)
    result[:gossip_id] = params[:gossip_id]
    return result
  end
end

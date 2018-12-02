class GossipsController < ApplicationController

  def new
    @gossips = Gossip.new
    @user = User.find(params[:user_id])

    puts "passage dans new"
  end

  def create
    puts "passage dans create"
    puts params
    my_params = params["gossip"]
    Gossip.create(title:my_params["title"], content:my_params['content'], user_id:params[:user_id])
    redirect_to user_gossips_path(params[:user_id])
  end

  def show
    @gossip_id = Gossip.find(params["id"])
    @comments = @gossip_id.comments

  end

  def index

  end

  def edit
    @gossip_id = Gossip.find(params["id"])
    @user_id = User.find(params[:user_id])

  end

  def update
    @gossip_id = Gossip.find(params["id"])
    gossip_params = params.require(:gossip).permit(:title, :content, :anonymous_gossiper)
    @gossip_id.update(gossip_params)
    redirect_to user_gossips_path(params[:user_id])
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to user_gossips_path(params[:user_id])
  end
end

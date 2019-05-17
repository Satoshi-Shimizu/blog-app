class PostsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @posts = Post.order("created_at DESC").page(params[:page]).per(5) 
  end
  
  def new
  end

  def create
    Post.create(text: params_permit[:text], user_id: current_user.id)
    redirect_to action: :index
  end

  private
  def params_permit
    params.require(:post).permit(:text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end

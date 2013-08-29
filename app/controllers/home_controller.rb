class HomeController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, :with => :show_index
  def index
    @categories = Category.all
    @post = Post.all
    @postz = Post.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categories }
      format.json { render json: @post }

    end
  end
  def project
    @post = Post.find(params[:id])
    
    @postz = Post.all(:order => 'created_at DESC', :limit => 4)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
      format.json { render json: @postz }
    end
  end
  protected
  def show_index
    
    redirect_to root_path()
  end
end

class ProjectController < ApplicationController
  def index
    @categories = Category.all
    @post = Post.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categories }
      format.json { render json: @post }
    end
  end
  def project
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end
end

class BlogController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, :with => :show_index
  def index
    @catebgs = Catebg.all
    if params[:tag]
      @blogcrs = Blogcr.tagged_with(params[:tag])
    else
      @blogcrs = Blogcr.all
    end
    # if params[:id]
    #   @blogcrs = Blogcr.catebgs_id(params[:id])
    # else
    #   @blogcrs = Blogcr.all
    # end
    @sortbgs = Sortbg.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @catebgs }
      format.json { render json: @blogcrs }
      format.json { render json: @sortbgs }
    end
  end
  def show
    @blogcrs = Blogcr.find(params[:id])
    @catebgs = Catebg.all
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @catebgs }
      format.json { render json: @blogcrs }
    end
  end
  def cate
    @catebgs = Catebg.find(params[:id])
    @blogcrs = Blogcr.all
  	@sortbgs = Sortbg.all
    respond_to do |format|
      format.html # show.html.erb
      
      format.json { render json: @blogcrs }
      format.json { render json: @sortbgs }
      format.json { render json: @catebgs }
    end
  end
  protected
  def show_index
    
    redirect_to "/blog"
  end
end

class BlogcrsController < ApplicationController
  # GET /blogcrs
  # GET /blogcrs.json
  before_filter :authenticate_user!
  def index
    if params[:tag]
      @blogcrs = Blogcr.tagged_with(params[:tag])
    else
      @blogcrs = Blogcr.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blogcrs }
    end
  end

  # GET /blogcrs/1
  # GET /blogcrs/1.json
  def show
    @blogcr = Blogcr.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blogcr }
    end
  end

  # GET /blogcrs/new
  # GET /blogcrs/new.json
  def new
    @blogcr = Blogcr.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @blogcr }
    end
  end

  # GET /blogcrs/1/edit
  def edit
    @blogcr = Blogcr.find(params[:id])
  end

  # POST /blogcrs
  # POST /blogcrs.json
  def create
    @blogcr = Blogcr.new(params[:blogcr])

    respond_to do |format|
      if @blogcr.save
        format.html { redirect_to @blogcr, notice: 'Blogcr was successfully created.' }
        format.json { render json: @blogcr, status: :created, location: @blogcr }
      else
        format.html { render action: "new" }
        format.json { render json: @blogcr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /blogcrs/1
  # PUT /blogcrs/1.json
  def update
    @blogcr = Blogcr.find(params[:id])

    respond_to do |format|
      if @blogcr.update_attributes(params[:blogcr])
        format.html { redirect_to @blogcr, notice: 'Blogcr was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @blogcr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogcrs/1
  # DELETE /blogcrs/1.json
  def destroy
    @blogcr = Blogcr.find(params[:id])
    @blogcr.destroy

    respond_to do |format|
      format.html { redirect_to blogcrs_url }
      format.json { head :no_content }
    end
  end
end

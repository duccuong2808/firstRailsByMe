class CatebgsController < ApplicationController
  # GET /catebgs
  # GET /catebgs.json
  before_filter :authenticate_user!
  def index
    @catebgs = Catebg.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @catebgs }
    end
  end

  # GET /catebgs/1
  # GET /catebgs/1.json
  def show
    @catebg = Catebg.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @catebg }
    end
  end

  # GET /catebgs/new
  # GET /catebgs/new.json
  def new
    @catebg = Catebg.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @catebg }
    end
  end

  # GET /catebgs/1/edit
  def edit
    @catebg = Catebg.find(params[:id])
  end

  # POST /catebgs
  # POST /catebgs.json
  def create
    @catebg = Catebg.new(params[:catebg])

    respond_to do |format|
      if @catebg.save
        format.html { redirect_to @catebg, notice: 'Catebg was successfully created.' }
        format.json { render json: @catebg, status: :created, location: @catebg }
      else
        format.html { render action: "new" }
        format.json { render json: @catebg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /catebgs/1
  # PUT /catebgs/1.json
  def update
    @catebg = Catebg.find(params[:id])

    respond_to do |format|
      if @catebg.update_attributes(params[:catebg])
        format.html { redirect_to @catebg, notice: 'Catebg was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @catebg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catebgs/1
  # DELETE /catebgs/1.json
  def destroy
    @catebg = Catebg.find(params[:id])
    @catebg.destroy

    respond_to do |format|
      format.html { redirect_to catebgs_url }
      format.json { head :no_content }
    end
  end
end

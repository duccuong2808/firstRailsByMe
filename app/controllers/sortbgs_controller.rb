class SortbgsController < ApplicationController
  # GET /sortbgs
  # GET /sortbgs.json
  before_filter :authenticate_user!
  def index
    @sortbgs = Sortbg.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sortbgs }
    end
  end

  # GET /sortbgs/1
  # GET /sortbgs/1.json
  def show
    @sortbg = Sortbg.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sortbg }
    end
  end

  # GET /sortbgs/new
  # GET /sortbgs/new.json
  def new
    @sortbg = Sortbg.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sortbg }
    end
  end

  # GET /sortbgs/1/edit
  def edit
    @sortbg = Sortbg.find(params[:id])
  end

  # POST /sortbgs
  # POST /sortbgs.json
  def create
    @sortbg = Sortbg.new(params[:sortbg])

    respond_to do |format|
      if @sortbg.save
        format.html { redirect_to @sortbg, notice: 'Sortbg was successfully created.' }
        format.json { render json: @sortbg, status: :created, location: @sortbg }
      else
        format.html { render action: "new" }
        format.json { render json: @sortbg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sortbgs/1
  # PUT /sortbgs/1.json
  def update
    @sortbg = Sortbg.find(params[:id])

    respond_to do |format|
      if @sortbg.update_attributes(params[:sortbg])
        format.html { redirect_to @sortbg, notice: 'Sortbg was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sortbg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sortbgs/1
  # DELETE /sortbgs/1.json
  def destroy
    @sortbg = Sortbg.find(params[:id])
    @sortbg.destroy

    respond_to do |format|
      format.html { redirect_to sortbgs_url }
      format.json { head :no_content }
    end
  end
end

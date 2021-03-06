class TalkController < ApplicationController

  before_filter :require_login, :except => [:show]

  # GET /talk
  # GET /talk.json
  def index
    @talk = Talk.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @talk }
    end
  end

  # GET /talk/1
  # GET /talk/1.json
  def show
    @talk = Talk.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @talk }
    end
  end

  # GET /talk/new
  # GET /talk/new.json
  def new
    @talk = Talk.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @talk }
    end
  end

  # GET /talk/1/edit
  def edit
    @talk = Talk.find(params[:id])
  end

  # POST /talk
  # POST /talk.json
  def create
    @talk = Talk.new(params[:talk])

    respond_to do |format|
      if @talk.save
        format.html { redirect_to @talk, notice: 'Talk was successfully created.' }
        format.json { render json: @talk, status: :created, location: @talk }
      else
        format.html { render action: "new" }
        format.json { render json: @talk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /talk/1
  # PUT /talk/1.json
  def update
    @talk = Talk.find(params[:id])

    respond_to do |format|
      if @talk.update_attributes(params[:talk])
        format.html { redirect_to @talk, notice: 'Talk was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @talk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /talk/1
  # DELETE /talk/1.json
  def destroy
    @talk = Talk.find(params[:id])
    @talk.destroy

    respond_to do |format|
      format.html { redirect_to talk_index_url }
      format.json { head :ok }
    end
  end
end

class CraigslistsController < ApplicationController
  before_action :set_craigslist, only: [:show, :edit, :update, :destroy]

  # GET /craigslists
  # GET /craigslists.json
  def index
    @craigslists = Craigslist.all
  end

  # GET /craigslists/1
  # GET /craigslists/1.json
  def show
  end

  # GET /craigslists/new
  def new
    @craigslist = Craigslist.new
  end

  # GET /craigslists/1/edit
  def edit
  end

  # POST /craigslists
  # POST /craigslists.json
  def create
    @craigslist = Craigslist.new(craigslist_params)

    respond_to do |format|
      if @craigslist.save
        format.html { redirect_to @craigslist, notice: 'Craigslist was successfully created.' }
        format.json { render :show, status: :created, location: @craigslist }
      else
        format.html { render :new }
        format.json { render json: @craigslist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /craigslists/1
  # PATCH/PUT /craigslists/1.json
  def update
    respond_to do |format|
      if @craigslist.update(craigslist_params)
        format.html { redirect_to @craigslist, notice: 'Craigslist was successfully updated.' }
        format.json { render :show, status: :ok, location: @craigslist }
      else
        format.html { render :edit }
        format.json { render json: @craigslist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /craigslists/1
  # DELETE /craigslists/1.json
  def destroy
    @craigslist.destroy
    respond_to do |format|
      format.html { redirect_to craigslists_url, notice: 'Craigslist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_craigslist
      @craigslist = Craigslist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def craigslist_params
      params.fetch(:craigslist, {})
    end
end

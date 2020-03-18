class WebappsController < ApplicationController
  before_action :set_webapp, only: [:show, :edit, :update, :destroy]

  # GET /webapps
  # GET /webapps.json
  def index
    @webapps = Webapp.all
  end

  # GET /webapps/1
  # GET /webapps/1.json
  def show
  end

  # GET /webapps/new
  def new
    @webapp = Webapp.new
  end

  # GET /webapps/1/edit
  def edit
  end

  # POST /webapps
  # POST /webapps.json
  def create
    @webapp = Webapp.new(webapp_params)

    respond_to do |format|
      if @webapp.save
        format.html { redirect_to @webapp, notice: 'Webapp was successfully created.' }
        format.json { render :show, status: :created, location: @webapp }
      else
        format.html { render :new }
        format.json { render json: @webapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /webapps/1
  # PATCH/PUT /webapps/1.json
  def update
    respond_to do |format|
      if @webapp.update(webapp_params)
        format.html { redirect_to @webapp, notice: 'Webapp was successfully updated.' }
        format.json { render :show, status: :ok, location: @webapp }
      else
        format.html { render :edit }
        format.json { render json: @webapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /webapps/1
  # DELETE /webapps/1.json
  def destroy
    @webapp.destroy
    respond_to do |format|
      format.html { redirect_to webapps_url, notice: 'Webapp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_webapp
      @webapp = Webapp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def webapp_params
      params.require(:webapp).permit(:name, :element)
    end
end

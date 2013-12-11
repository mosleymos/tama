class TamasController < ApplicationController
  before_action :set_tama, only: [:show, :edit, :update, :destroy]

  # GET /tamas
  # GET /tamas.json
  def index
    @tamas = Tama.all
  end

  # GET /tamas/1
  # GET /tamas/1.json
  def show
  end

  # GET /tamas/new
  def new
    @tama = Tama.new
  end

  # GET /tamas/1/edit
  def edit
  end

  # POST /tamas
  # POST /tamas.json
  def create
    @tama = Tama.new(tama_params)

    respond_to do |format|
      if @tama.save
        format.html { redirect_to @tama, notice: 'Tama was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tama }
      else
        format.html { render action: 'new' }
        format.json { render json: @tama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tamas/1
  # PATCH/PUT /tamas/1.json
  def update
    respond_to do |format|
      if @tama.update(tama_params)
        format.html { redirect_to @tama, notice: 'Tama was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tamas/1
  # DELETE /tamas/1.json
  def destroy
    @tama.destroy
    respond_to do |format|
      format.html { redirect_to tamas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tama
      @tama = Tama.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tama_params
      params[:tama]
    end
end

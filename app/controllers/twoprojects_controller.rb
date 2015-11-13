class TwoprojectsController < ApplicationController
  before_action :set_twoproject, only: [:show, :edit, :update, :destroy]

  # GET /twoprojects
  # GET /twoprojects.json
  def index
    @twoprojects = Twoproject.all
  end

  # GET /twoprojects/1
  # GET /twoprojects/1.json
  def show
  end

  # GET /twoprojects/new
  def new
    @twoproject = Twoproject.new
  end

  # GET /twoprojects/1/edit
  def edit
  end

  # POST /twoprojects
  # POST /twoprojects.json
  def create
    @twoproject = Twoproject.new(twoproject_params)

    respond_to do |format|
      if @twoproject.save
        format.html { redirect_to @twoproject, notice: 'Twoproject was successfully created.' }
        format.json { render :show, status: :created, location: @twoproject }
      else
        format.html { render :new }
        format.json { render json: @twoproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twoprojects/1
  # PATCH/PUT /twoprojects/1.json
  def update
    respond_to do |format|
      if @twoproject.update(twoproject_params)
        format.html { redirect_to @twoproject, notice: 'Twoproject was successfully updated.' }
        format.json { render :show, status: :ok, location: @twoproject }
      else
        format.html { render :edit }
        format.json { render json: @twoproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twoprojects/1
  # DELETE /twoprojects/1.json
  def destroy
    @twoproject.destroy
    respond_to do |format|
      format.html { redirect_to twoprojects_url, notice: 'Twoproject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twoproject
      @twoproject = Twoproject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twoproject_params
      params.require(:twoproject).permit(:title, :Sdescription, :Ldescription, :btnName, :btnUrl, :image)
    end
end

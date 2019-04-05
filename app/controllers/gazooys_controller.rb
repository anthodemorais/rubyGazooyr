class GazooysController < ApplicationController
  before_action :set_gazooy, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!,  only: [:new, :create, :update, :edit, :destroy]
  # GET /gazooys
  # GET /gazooys.json
  def index
    @gazooys = Gazooy.all
  end

  # GET /gazooys/1
  # GET /gazooys/1.json
  def show
    @user = @gazooy.user
  end

  # GET /gazooys/new
  def new
    @gazooy = Gazooy.new 
  end

  # GET /gazooys/1/edit
  def edit
  end

  # POST /gazooys
  # POST /gazooys.json
  def create
    @gazooy = Gazooy.new(gazooy_params)
    @gazooy.user = current_user

    respond_to do |format|
      if @gazooy.save
        format.html { redirect_to @gazooy, notice: 'Gazooy was successfully created.' }
        format.json { render :show, status: :created, location: @gazooy }
      else
        format.html { render :new }
        format.json { render json: @gazooy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gazooys/1
  # PATCH/PUT /gazooys/1.json
  def update
    respond_to do |format|
      if @gazooy.update(gazooy_params)
        format.html { redirect_to @gazooy, notice: 'Gazooy was successfully updated.' }
        format.json { render :show, status: :ok, location: @gazooy }
      else
        format.html { render :edit }
        format.json { render json: @gazooy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gazooys/1
  # DELETE /gazooys/1.json
  def destroy
    @gazooy.destroy
    respond_to do |format|
      format.html { redirect_to gazooys_url, notice: 'Gazooy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gazooy
      @gazooy = Gazooy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gazooy_params
      params.require(:gazooy).permit(:text)
    end
end

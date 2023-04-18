class LatestsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_latest, only: %i[ show edit update destroy ]

  # GET /latests or /latests.json
  def index
    @latests = Latest.all
  end

  # GET /latests/1 or /latests/1.json
  def show
  end

  # GET /latests/new
  def new
    @latest = Latest.new
  end

  # GET /latests/1/edit
  def edit
  end

  # POST /latests or /latests.json
  def create
    @latest = current_user.latests.new(latest_params)

    respond_to do |format|
      if @latest.save
        format.html { redirect_to latest_url(@latest), notice: "Latest was successfully created." }
        format.json { render :show, status: :created, location: @latest }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @latest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /latests/1 or /latests/1.json
  def update
    respond_to do |format|
      if @latest.update(latest_params)
        format.html { redirect_to latest_url(@latest), notice: "Latest was successfully updated." }
        format.json { render :show, status: :ok, location: @latest }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @latest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /latests/1 or /latests/1.json
  def destroy
    @latest.destroy

    respond_to do |format|
      format.html { redirect_to latests_url, notice: "Latest was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_latest
      @latest = Latest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def latest_params
      params.require(:latest).permit(:description, :longitude, :latitude, :user_id, :allow_comments, :show_likes_counter, images: [])
    end
end

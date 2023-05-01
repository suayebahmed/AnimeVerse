class ConventionsController < ApplicationController
  before_action :set_convention, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /conventions or /conventions.json
  def index
    @conventions = Convention.all
  end

  # GET /conventions/1 or /conventions/1.json
  def show
    @reviews = @convention.reviews.order(created_at: :desc)
   

  end

  # GET /conventions/new
  def new
    @convention = Convention.new
  end

  # GET /conventions/1/edit
  def edit
  end

  # POST /conventions or /conventions.json
  def create
    @convention = Convention.new(convention_params)

    respond_to do |format|
      if @convention.save
        format.html { redirect_to convention_url(@convention), notice: "Another Convention was successfully created." }
        format.json { render :show, status: :created, location: @convention }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @convention.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conventions/1 or /conventions/1.json
  def update
    respond_to do |format|
      if @convention.update(convention_params)
        format.html { redirect_to convention_url(@convention), notice: "Convention was successfully updated." }
        format.json { render :show, status: :ok, location: @convention }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @convention.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conventions/1 or /conventions/1.json
  def destroy
    @convention.destroy

    respond_to do |format|
      format.html { redirect_to conventions_url, notice: "Convention was BLAMMED." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_convention
      @convention = Convention.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def convention_params
      params.require(:convention).permit(:description, :link, :city, :state, :price, :title, :image)
    end
end

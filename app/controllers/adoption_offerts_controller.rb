class AdoptionOffertsController < ApplicationController
  before_action :set_adoption_offert, only: %i[ show edit update destroy ]

  # GET /adoption_offerts or /adoption_offerts.json
  def index
    @adoption_offerts = AdoptionOffert.all
  end

  # GET /adoption_offerts/1 or /adoption_offerts/1.json
  def show
  end

  # GET /adoption_offerts/new
  def new
    @adoption_offert = AdoptionOffert.new
  end

  # GET /adoption_offerts/1/edit
  def edit
  end

  # POST /adoption_offerts or /adoption_offerts.json
  def create
    @adoption_offert = AdoptionOffert.new(adoption_offert_params)

    respond_to do |format|
      if @adoption_offert.save
        format.html { redirect_to @adoption_offert, notice: "Adoption offert was successfully created." }
        format.json { render :show, status: :created, location: @adoption_offert }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @adoption_offert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adoption_offerts/1 or /adoption_offerts/1.json
  def update
    respond_to do |format|
      if @adoption_offert.update(adoption_offert_params)
        format.html { redirect_to @adoption_offert, notice: "Adoption offert was successfully updated." }
        format.json { render :show, status: :ok, location: @adoption_offert }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @adoption_offert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adoption_offerts/1 or /adoption_offerts/1.json
  def destroy
    @adoption_offert.destroy
    respond_to do |format|
      format.html { redirect_to adoption_offerts_url, notice: "Adoption offert was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adoption_offert
      @adoption_offert = AdoptionOffert.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def adoption_offert_params
      params.require(:adoption_offert).permit(:readed, :context, :receiver_id, :sender_id, :aproved, :answer, :dog_id)
    end
end

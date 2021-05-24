class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[ show edit update destroy ]
  include SessionsHelper
  # GET /profiles or /profiles.json
  def index
    @profiles = Profile.all
  end

  # GET /profiles/1 or /profiles/1.json
  def show
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
    @profile = Profile.where(:user_id => params[:id]).first
    if current_user.id != @profile.user_id
      render :access_denied, status: :ok, location: @profile
    end
  end

  # POST /profiles or /profiles.json
  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: "Profile was successfully created." }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1 or /profiles/1.json
  def update
  if @profile.update(profile_params)
    if @profile.user_id == current_user.id
      redirect_to myprofile_path
      return
    end
        redirect_to @profile, notice: "Profile was successfully updated."
      else
        render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /profiles/1 or /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: "Profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profile_params
      params.require(:profile).permit(:user_id, :apartment, :garden, :age, :animal_experience, :time_to_spent, :finance, :description)
    end
end

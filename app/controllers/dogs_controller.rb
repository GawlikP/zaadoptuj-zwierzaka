class DogsController < ApplicationController
  before_action :set_dog, only: %i[ show edit update destroy ]
  include SessionsHelper
  before_action :kick
  # GET /dogs or /dogs.json
  def index
    @dogs = Dog.all
  end

  # GET /dogs/1 or /dogs/1.json
  def show
    @questions = Question.where(dog_id: params[:id])
    @question = Question.new

    if session[:question_errors]
      @errors = session[:question_errors]
      session[:question_errors] = []
    end
    @question.dog_id = params[:id]
    @question.user_id = current_user.id

    @adoption_offert = AdoptionOffert.new
    @adoption_offert.sender_id = current_user.id
    @adoption_offert.receiver_id = @dog.user.id
    @adoption_offert.dog_id = @dog.id

    @is_offert_send = AdoptionOffert.where(sender_id: current_user.id, dog_id: @dog).empty?
  end

  # GET /dogs/new
  def new
    @dog = Dog.new
  end

  # GET /dogs/1/edit
  def edit
  end

  # POST /dogs or /dogs.json
  def create
    @dog = Dog.new(dog_params)


      if @dog.save
        redirect_to @dog
      else
        session[:dog_errors] = @dog.errors
        redirect_to adddog_path
      end

  end

  # PATCH/PUT /dogs/1 or /dogs/1.json
  def update
    respond_to do |format|
      if @dog.update(dog_params)
        format.html { redirect_to @dog, notice: "Dog was successfully updated." }
        format.json { render :show, status: :ok, location: @dog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dogs/1 or /dogs/1.json
  def destroy
    @dog.destroy
    respond_to do |format|
      format.html { redirect_to dogs_url, notice: "Dog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dog
      @dog = Dog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dog_params
      params.require(:dog).permit(:name, :birth_date, :breed, :description, :gender, :vaccination, :size, :weight, :height, :apartment_size, :childrens, :time_to_spent, :owner_with_dogs, :animals, :noise, :energy, :disposition, :localization, :coat, :drooling, :obedience, :user_id)
    end
    def kick
      kick_out
    end
end

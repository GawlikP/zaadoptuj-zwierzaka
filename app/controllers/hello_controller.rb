class HelloController < ApplicationController
    include SessionsHelper
    before_action :kick, except: [:index]
    def index

    end
    def main
      @dogs = Dog.all
      @users = []
      @dogs.each {|dog|
        user = User.find_by(id: dog.user_id)
        @users.push(user.name)
      }
      @offerts = AdoptionOffert.all 
    end
    def profile
      @user = current_user
      @profile = Profile.find_by(user_id: @user.id)

    end
    def adddog
      @dog = Dog.new
      @dog.user_id = current_user.id
      if session[:dog_errors]
        @errors = session[:dog_errors]
        session[:dog_errors] = []
      end
    end


    def addanswer

      question = Question.find(params[:id])

      question.answer = params[:question][:answer]
      question.hiden = false

      if question.save
          redirect_to dog_path(question.dog_id)
        else
          session[:question_errors] = question.errors
      end
    end

    def breeders
      users = User.all
      @breeders = []
      users.each do |user|
        if user.dogs.count > 0
          @breeders.push user
        end
      end
    end

    def addadoption

      @adoption_offert = AdoptionOffert.new(adoption_offert_params)
      if @adoption_offert.save
          redirect_to dog_path(@adoption_offert.dog_id)
        else
          session[:adoption_errors] = @adoption_offert.errors
      end
    end

    def myoffers
      @adoption_offers = AdoptionOffert.where(receiver_id: current_user.id)
      @my_offerts = AdoptionOffert.where(sender_id: current_user.id)
    end

    def accept_offer

      @adoption_offert = AdoptionOffert.where(dog_id: params[:adoption_offert][:dog_id], receiver_id: current_user.id, sender_id: params[:adoption_offert][:sender_id]).update_all aproved: true
      if @adoption_offert > 0
        redirect_to myoffers_path
      else
        @adoption_offert.errors.each do |key, value|
          Rails.logger.warn "Param #{key}: #{value}"
        end
      end
    end

    private
    def kick
      kick_out
    end

    def adoption_offert_params
      params.require(:adoption_offert).permit(:readed, :context, :receiver_id, :sender_id, :aproved, :answer, :dog_id)
    end
end

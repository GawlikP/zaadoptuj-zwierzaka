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

      params.each do |key, value|
        Rails.logger.warn "Param #{key}: #{value}"
      end
      @adoption_offert = AdoptionOffert.new(adoption_offert_params)
      if @adoption_offert.save
          redirect_to dog_path(@adoption_offert.dog_id)
        else
          session[:adoption_errors] = @adoption_offert.errors
      end
    end

    def myoffers
      @adoption_offers = AdoptionOffert.where(receiver_id: current_user.id)

    end

    private
    def kick
      kick_out
    end

    def adoption_offert_params
      params.require(:adoption_offert).permit(:readed, :context, :receiver_id, :sender_id, :aproved, :answer, :dog_id)
    end
end

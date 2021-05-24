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

    end
    def addanswer
      params.each do |key, value|
        Rails.logger.warn "Param #{key}: #{value}"
      end
      question = Question.find(params[:id])

      question.answer = params[:question][:answer]
      question.hiden = false
      Rails.logger.warn "Question #{question.answer}"
      if question.save
        redirect_to dog_path(question.dog_id)
      end
    end

    private
    def kick
      kick_out
    end
end

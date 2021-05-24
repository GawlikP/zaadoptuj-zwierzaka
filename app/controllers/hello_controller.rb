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

    private
    def kick
      kick_out
    end
end

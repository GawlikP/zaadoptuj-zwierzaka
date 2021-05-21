class HelloController < ApplicationController
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
end

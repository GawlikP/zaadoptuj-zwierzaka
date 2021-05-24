class UsersController < ApplicationController
  before_action :kick, except: [:new, :create]
  def show
    @user = User.find(params[:id])

  end

  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      @profile = Profile.new(user_id: @user.id )
      @profile.save
      redirect_to :controller => 'hello', :action => 'main'
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end

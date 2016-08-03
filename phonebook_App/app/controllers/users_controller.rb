class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  
  def index
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render '/new'
    end
  end
  
  def search
  end
  
  def input_search
    id = 0
    user = User.find_by(name: params[:q])
    id = user ? user.id : 0
    redirect_to "/users/#{id}"
  end
  
  def edit
    @user = User.find(params[:id])
    
  end

  
  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    render 'edit_list'
  end
  
  def edit_list
  end
  
  
  def fail_search
  end
  

  private

    def user_params
     params.require(:user).permit(:name, :email, :number)
    end
end

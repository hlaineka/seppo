class UsersController < ApplicationController
  # GET method to get all from database   
  def index   
    @users = User.all   
  end   
    
  # GET method to get one by id   
  def show   
    @users = User.find(params[:id])   
  end   
    
  # GET method for the new add form   
  def new   
    @users = User.new   
  end   

  # POST method for processing form data   
  def create   
    @users = User.new(users_params)   
    if @users.save   
      flash[:notice] = 'Added!'   
      redirect_to users_path   
    else   
      flash[:error] = 'Failed to edit!'   
      render :new   
    end   
  end   
  
  def destroy   
    @users = User.find(users[:id])   
    if @users.delete   
      flash[:notice] = 'Deleted!'   
      redirect_to users_path   
    else   
      flash[:error] = 'Failed to delete!'   
      render :destroy   
    end   
  end   
     
 def users_params   
    params.require(:users).permit(:instructors_id, :players_id, :username, :description, :tasks_id)   
  end   
end
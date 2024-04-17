class GamesController < ApplicationController
  # GET method to get all from database   
  def index   
    @games = Game.all   
  end   
    
  # GET method to get one by id   
  def show   
    @games = Game.find(games[:id])   
  end   
    
  # GET method for the new add form   
  def new   
    @games = Game.new   
  end   

  # POST method for processing form data   
  def create   
    @games = Game.new(games_params)   
    if @games.save   
      flash[:notice] = 'Added!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to edit!'   
      render :new   
    end   
  end   
  
  def destroy   
    @games = Game.find(games[:id])   
    if @games.delete   
      flash[:notice] = 'Deleted!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to delete!'   
      render :destroy   
    end   
  end   
     
 def games_params   
    games.require(:games).permit(:instructors_id, :players_id, :name, :description, :tasks_id)   
  end   
end

class Api::GamesController < ApplicationController
  def index
    @games = Game.all
    render "index.json.jbuilder"
  end

  def create
    @game = Game.new(
      creator: params[:creator],
      title: params[:title],
      description: params[:description],
      price: params[:price]
      )  
      @game.save
      render "show.json.jbuilder"  
  end

  def show
    @game = Game.find_by(id:params[:id])
    render "show.json.jbuilder"
  end
end

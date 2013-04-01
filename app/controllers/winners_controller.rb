class WinnersController < ApplicationController

  def index
    @winners = Winner.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @winners }
    end
  end

  def show
      @winner = Winner.find(params[:id])
  end

  def new
      @winner = Winner.new
      
  end

  def edit
      @winner = Winner.find(params[:id])
  end

  def create
      @winner = Winner.new(params[:winner])
      render :action => :new unless @winner.save
  end

  def update
      @winner = Winner.find(params[:id])
      render :action => :edit unless @winner.update_attributes(params[:winner])
  end

  def destroy
      @winner = Winner.find(params[:id])
      @winner.destroy
  end
  
end
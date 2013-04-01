class UsersController < ApplicationController

  def index
    @users = User.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  def show
      @user = User.find(params[:id])
  end

  def new
      @user = User.new
  end

  def edit
      @user = User.find(params[:id])
  end

  def create
      @user = User.new(params[:user])
      render :action => :new unless @user.save
  end

  def update
      @user = User.find(params[:id])
      render :action => :edit unless @user.update_attributes(params[:user])
  end

  def destroy
      @user = User.find(params[:id])
      @user.destroy
  end
  
end

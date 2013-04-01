class MembersController < ApplicationController

before_filter :find_team_members

  def index
    @members = @team.members.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @members }
    end
  end

  def show
      
  end

  def new
      @member = Member.new
      @teams = Team.all
  end

  def edit
      @teams = Team.all
      
  end

  def create
      #@member.team_id = @team.id # asignamos la FK para poder guardar el objeto en la db
      @member = @team.members.build(params[:member])
      render :action => :new unless @member.save
  end

  def update
      team_members_path(@team) 
      @teams = Team.all
      render :action => :edit unless @member.update_attributes(params[:member])
  end

  def destroy
      team_members_path(@team) 
      @member.destroy
  end

  private
  def find_team_members
  @team = Team.find(params[:team_id])
  @member = Member.find(params[:id]) if params[:id]
  end


end

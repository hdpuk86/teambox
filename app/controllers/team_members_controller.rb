class TeamMembersController < ApplicationController
  before_action :set_team_member, only: %i[ show edit update destroy ]

  # GET /team_members
  def index
    @team_members = TeamMember.all
  end

  # GET /team_members/1
  def show
  end

  # GET /team_members/new
  def new
    @team_member = TeamMember.new
  end

  # GET /team_members/1/edit
  def edit
  end

  # POST /team_members
  def create
    @team_member = TeamMember.new(team_member_params)

    if @team_member.save
      redirect_to @team_member, notice: "Team member was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /team_members/1
  def update
    if @team_member.update(team_member_params)
      redirect_to @team_member, notice: "Team member was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /team_members/1
  def destroy
    @team_member.destroy

    redirect_to team_members_url, notice: "Team member was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_member
      @team_member = TeamMember.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def team_member_params
      params.require(:team_member).permit(:first_name, :last_name)
    end
end

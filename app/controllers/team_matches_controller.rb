class TeamMatchesController < ApplicationController
  before_action :set_team_match, only: %i[ show edit update destroy ]

  # GET /team_matches or /team_matches.json
  def index
    @team_matches = TeamMatch.all
  end

  # GET /team_matches/1 or /team_matches/1.json
  def show
  end

  # GET /team_matches/new
  def new
    @team_match = TeamMatch.new
  end

  # GET /team_matches/1/edit
  def edit
  end

  # POST /team_matches or /team_matches.json
  def create
    @team_match = TeamMatch.new(team_match_params)

    respond_to do |format|
      if @team_match.save
        format.html { redirect_to team_match_url(@team_match), notice: "Team match was successfully created." }
        format.json { render :show, status: :created, location: @team_match }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @team_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_matches/1 or /team_matches/1.json
  def update
    respond_to do |format|
      if @team_match.update(team_match_params)
        format.html { redirect_to team_match_url(@team_match), notice: "Team match was successfully updated." }
        format.json { render :show, status: :ok, location: @team_match }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @team_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_matches/1 or /team_matches/1.json
  def destroy
    @team_match.destroy

    respond_to do |format|
      format.html { redirect_to team_matches_url, notice: "Team match was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_match
      @team_match = TeamMatch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def team_match_params
      params.require(:team_match).permit(:date, :home_team_id, :away_team_id)
    end
end

class GroupingsController < ApplicationController
  before_action :set_grouping, only: %i[ show edit update destroy ]

  # GET /groupings or /groupings.json
  def index
    @groupings = Grouping.all
  end

  # GET /groupings/1 or /groupings/1.json
  def show
  end

  # GET /groupings/new
  def new
    @grouping = Grouping.new
  end

  # POST /groupings or /groupings.json
  def create
    @grouping = Grouping.new

    respond_to do |format|
      if @grouping.save
        format.html { redirect_to @grouping, notice: "Grouping was successfully created." }
        format.json { render :show, status: :created, location: @grouping }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @grouping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groupings/1 or /groupings/1.json
  def destroy
    @grouping.destroy
    respond_to do |format|
      format.html { redirect_to groupings_url, notice: "Grouping was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grouping
      @grouping = Grouping.find(params[:id])
    end
end

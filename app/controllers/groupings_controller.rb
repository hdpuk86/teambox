class GroupingsController < ApplicationController
  before_action :set_grouping, only: %i[ show destroy ]

  # GET /groupings
  def index
    @groupings = Grouping.all
    @grouping = Grouping.new
  end

  # GET /groupings/1
  def show
  end

  # POST /groupings
  def create
    @groupings = Grouping.all
    @grouping = Grouping.new

    if @grouping.save
      redirect_to groupings_path, notice: "Grouping was successfully created."
    else
      render :index, status: :unprocessable_entity
    end
  end

  # DELETE /groupings/1
  def destroy
    @grouping.destroy
    redirect_to groupings_url, notice: "Grouping was successfully destroyed."
  end

  private
    # Use callbacks to share common setup
    def set_grouping
      @grouping = Grouping.find(params[:id])
    end
end

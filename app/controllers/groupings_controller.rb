class GroupingsController < ApplicationController
  before_action :set_grouping, only: %i[ show edit update destroy ]

  # GET /groupings
  def index
    @groupings = Grouping.all
  end

  # GET /groupings/1
  def show
  end

  # GET /groupings/new
  def new
    @grouping = Grouping.new
  end

  # POST /groupings
  def create
    @grouping = Grouping.new

    if @grouping.save
      redirect_to @grouping, notice: "Grouping was successfully created."
    else
      render :new, status: :unprocessable_entity
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

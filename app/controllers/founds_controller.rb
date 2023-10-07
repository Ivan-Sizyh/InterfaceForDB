class FoundsController < ApplicationController
  before_action :set_found, only: %i[show edit update destroy]

  def index
    @founds = Found.all
  end

  def show
  end

  def new
    @found = Found.new
  end

  def create
    @found = Found.new(found_params)

    if @found.save
      redirect_to @found, notice: 'Found was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @found.update(found_params)
      redirect_to @found, notice: 'Found was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @found.destroy
    redirect_to founds_url, notice: 'Found was successfully destroyed.'
  end

  private

  def set_found
    @found = Found.find(params[:id])
  end

  def found_params
    params.require(:found).permit(:library_id, :title, :books, :magazines, :newspapers, :collections, :dissertations, :essays)
  end
end

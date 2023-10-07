class ReplenishmentsController < ApplicationController
  before_action :set_replenishment, only: %i[show edit update destroy]

  def index
    @replenishments = Replenishment.all
  end

  def show
  end

  def new
    @replenishment = Replenishment.new
  end

  def create
    @replenishment = Replenishment.new(replenishment_params)

    if @replenishment.save
      redirect_to @replenishment, notice: 'Replenishment was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @replenishment.update(replenishment_params)
      redirect_to @replenishment, notice: 'Replenishment was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @replenishment.destroy
    redirect_to replenishments_url, notice: 'Replenishment was successfully destroyed.'
  end

  private

  def set_replenishment
    @replenishment = Replenishment.find(params[:id])
  end

  def replenishment_params
    params.require(:replenishment).permit(:library_id, :employee_id, :found_id, :data_receipt, :source_title,
                                          :data_replenishment, :publishing_house, :instances)
  end
end

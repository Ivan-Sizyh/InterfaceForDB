class LibrariesController < ApplicationController
  before_action :set_library, only: %i[show edit update destroy]

  def index
    @libraries = Library.all
  end

  def show
  end

  def new
    @library = Library.new
  end

  def create
    @library = Library.new(library_params)

    if @library.save
      redirect_to @library
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @library.update(library_params)
      redirect_to @library
    else
      render :edit
    end
  end

  def destroy
    @library.destroy
    redirect_to libraries_url
  end

    private

  def set_library
    @library = Library.find(params[:id])
  end

  def library_params
    params.require(:library).permit(:type_id, :title, :address, :city)
  end
end

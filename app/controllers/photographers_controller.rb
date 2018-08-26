class PhotographersController < ApplicationController
  def index
   @photographers = Photographer.all
  end

  def show
    @photographer = Photographer.find(params[:id])
  end

  def new
    @photographer = Photographer.new
  end

  def create
    @photographer = Photographer.new(params.require(:photographer).permit(:name, :address, :phone))

    if @photographer.save
      redirect_to @photographer
    else
      render 'new'
    end
  end

  private
    def photographer_params
      params.require(:photographer).permit(:name, :address, :phone)
    end
end

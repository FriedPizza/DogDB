class FurController < ApplicationController
  def index
    @fur = Fur.all
  end

  def show
    @fur = Fur.find(params[:id])
  end

  def new
    @fur = Fur.new
  end

  def edit
    @fur = Fur.find(params[:id])
  end

  def create
    @fur = Fur.new(fur_params)

    if @fur.save
      redirect_to @fur
    else
      render 'new'
    end
  end   

  def update
    @fur = Fur.find(params[:id])
  
    if @fur.update(fur_params)
      redirect_to @fur
    else
      render 'edit'
    end
  end

  def destroy
    @fur = Fur.find(params[:id])
    @fur.destroy

    redirect_to fur_index_path
  end

  private
    def fur_params
      params.require(:fur).permit(:type_name)
    end
end
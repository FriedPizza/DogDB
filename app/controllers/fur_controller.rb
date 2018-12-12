class FurController < ApplicationController
	def index
    	@fur = Fur.all
  	end

	def show
    	@fur = Fur.find(params[:id])
  	end

	def new
	end

	def create
	  @fur = Fur.new(fur_params)
	 
	  @fur.save
	  redirect_to fur_index_url
	end
	 
	private
	  def fur_params
	    params.require(:fur).permit(:type_name)
	  end
end

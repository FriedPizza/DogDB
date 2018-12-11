class DogController < ApplicationController

	def index
    	@dog = Dog.all
  	end

	def show
    	@dog = Dog.find(params[:id])
  	end

	def new
	end

	def create
	  @dog = Dog.new(dog_params)
	 
	  @dog.save
	  redirect_to @dog
	end
	 
	private
	  def dog_params
	    params.require(:dog).permit(:breed_name, :size, :maint_cost)
	  end

end

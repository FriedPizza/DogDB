class CharacterController < ApplicationController
	def index
    	@character = Character.all
  	end

	def show
    	@character = Character.find(params[:id])
  	end

	def new
	end

	def create
	  @character = Character.new(character_params)
	 
	  @character.save
	  redirect_to character_index_url
	end
	 
	private
	  def character_params
	    params.require(:character).permit(:character_name)
	  end
end

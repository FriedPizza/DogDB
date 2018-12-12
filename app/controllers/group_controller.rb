class GroupController < ApplicationController
	def index
    	@group = Group.all
  	end

	def show
    	@group = Group.find(params[:id])
  	end

	def new
	end

	def create
	  @group = Group.new(group_params)
	 
	  @group.save
	  redirect_to group_index_url
	end
	 
	private
	  def group_params
	    params.require(:group).permit(:group_name)
	  end
end

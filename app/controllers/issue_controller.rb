class IssueController < ApplicationController
	def index
    	@issue = Issue.all
  	end

	def show
    	@issue = Issue.find(params[:id])
  	end

	def new
	end

	def create
	  @issue = Issue.new(issue_params)
	 
	  @issue.save
	  redirect_to issue_index_url
	end
	 
	private
	  def issue_params
	    params.require(:issue).permit(:issue_name)
	  end
end

class WeatherController < ApplicationController
	def index
    	@weather = Weather.all
  	end

	def show
    	@weather = Weather.find(params[:id])
  	end

	def new
	end

	def create
	  @weather = Weather.new(weather_params)
	 
	  @weather.save
	  redirect_to weather_index_url
	end
	 
	private
	  def weather_params
	    params.require(:weather).permit(:weather_name)
	  end
end

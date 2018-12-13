class WeatherController < ApplicationController
  def index
    @weather = Weather.all
  end

  def show
    @weather = Weather.find(params[:id])
  end

  def new
    @weather = Weather.new
  end

  def edit
    @weather = Weather.find(params[:id])
  end
   
  def create
    @weather = Weather.new(weather_params)

    if @weather.save
      redirect_to @weather
    else
      render 'new'
    end
  end   

  def update
    @weather = Weather.find(params[:id])
  
    if @weather.update(weather_params)
      redirect_to @weather
    else
      render 'edit'
    end
  end

  def destroy
    @weather = Weather.find(params[:id])
    @weather.destroy

    redirect_to weather_index_path
  end

  private
    def weather_params
      params.require(:weather).permit(:weather_name)
    end
end
class TemperatureRatingsController < ApplicationController
  def index
    @temperature_ratings = TemperatureRating.all
  end

  def new
    @temperature_rating = TemperatureRating.new
  end

  def create
    @temperature_rating = TemperatureRating.new(temperature_rating_params)
    @temperature_rating.heatometer_id = Heatometer.first.id

    if @temperature_rating.save
      redirect_to temperature_ratings_url
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def temperature_rating_params
    params.require(:temperature_rating).permit(:postcode)
  end
end

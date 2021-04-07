class HeatometersController < ApplicationController
  before_action :set_heatometer

  def edit
  end

  def update
  end

  private

  def set_heatometer
    @heatometer = Heatometer.find(params[:id])
  end
end

class HomeController < ApplicationController
  before_action :set_global_sumary_service
  def index
    @sumary_service = @sumary_service.general
  end

  def confirmed
    @confirmed = @sumary_service.confirmed
  end

  def recovered
    @recovered = @sumary_service.recovered
  end

  def deaths
    @deaths = @sumary_service.deaths
  end

  private

  def set_global_sumary_service
    @sumary_service = GlobalSumary.new
  end
end

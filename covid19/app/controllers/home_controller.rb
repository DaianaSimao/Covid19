class HomeController < ApplicationController
  before_action :set_global_sumary_service 
  def index
    @sumary_service = @sumary_service.general
  end

  def data
    @confirmed = @sumary_service.data
  end



  private

  def set_global_sumary_service
    @sumary_service = GlobalSumary.new
  end

end

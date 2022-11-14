class HomeController < ApplicationController
  before_action :set_global_sumary_service
  before_action :set_summary_service
  def index
    @sumary_service2 = @sumary_service2.general2
  end

 def data 
  @data = @sumary_service.data
 end

 def data2
  @data2 = @sumary_service2.data2
 end

 def confirmed
  @sumary_service = @sumary_service.general
 end

  private

  def set_global_sumary_service
    @sumary_service = GlobalSumary.new
  end

  def set_summary_service
    @sumary_service2 = Summary.new
  end
end

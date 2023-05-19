class HomeController < ApplicationController
  before_action :set_pais_service
  before_action :set_mundo_service
  def index
    @pais = @pais.general
    @mundo = @mundo.general2
  end

 def confirmed
  @pais = @pais.general
 end

 def recovered
  @pais = @pais.general
 end

 def deaths
  @pais = @pais.general
 end

  private

  def set_pais_service
    @pais = Pais.new
  end

  def set_mundo_service
    @mundo = Mundo.new
  end
end

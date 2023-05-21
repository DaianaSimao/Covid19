class HomeController < ApplicationController
  before_action :set_pais_service
  before_action :set_mundo_service
  def index
    @pais = @pais.general
    @mundo = @mundo.general2
  end

  def confirmed
    per_page = params[:per_page] || 10
    response = @pais.general
    parsed_response = JSON.parse(response.body)
    @pais = Kaminari.paginate_array(parsed_response).page(params[:page]).per(per_page)
  end


  def deaths
    per_page = params[:per_page] || 10
    response = @pais.general
    parsed_response = JSON.parse(response.body)
    @pais = Kaminari.paginate_array(parsed_response).page(params[:page]).per(per_page)
  end

  def search
    search_term = params[:search_term]
    response = @pais.general
    parsed_response = JSON.parse(response.body)
    matched_pais = parsed_response.select { |pais| pais['country_region'].downcase.include?(search_term.downcase) }
    per_page = params[:per_page] || 10
    @pais = Kaminari.paginate_array(matched_pais).page(params[:page]).per(per_page)
    render 'confirmed'
  end

  private

  def set_pais_service
    @pais = Pais.new
  end

  def set_mundo_service
    @mundo = Mundo.new
  end
end

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

  def search
    search_term = params[:search_term]
    @pais = @pais.general(query: { search: search_term })
    render 'confirmed'
  end

  # def search_countries(search_term)
  #   response = HTTParty.get('https://mahabub81.github.io/covid-19-api/api/v1/countries.json', query: { search: search_term })
  #   if response.success?
  #     response.parsed_response
  #   else
  #     # Lógica para tratar uma resposta de erro da API
  #     # Por exemplo, lançar uma exceção, exibir uma mensagem de erro, etc.
  #   end
  # end

  private

  def set_pais_service
    @pais = Pais.new
  end

  def set_mundo_service
    @mundo = Mundo.new
  end
end

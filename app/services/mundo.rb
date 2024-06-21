class Mundo
  include HTTParty
  base_uri 'https://mahabub81.github.io/covid-19-api/api/v1'

  def initialize
    @options2 = {}
  end

  def general2
    self.class.get('/world-summary.json', @options2)
  end
end

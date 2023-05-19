class Pais
    include HTTParty
    base_uri 'https://mahabub81.github.io/covid-19-api/api/v1'

    def initialize
        @options = {}
    end

    def general
        self.class.get('/countries.json', @options)
    end
end
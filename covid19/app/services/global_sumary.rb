class GlobalSumary
    include HTTParty
    base_uri 'https://corona-live-api.herokuapp.com/summary'

    def initialize
        @options = {}
    end

    def general
        self.class.get('/', @options)
    end

    def data
        self.class.get('/data', @options)
    end

end
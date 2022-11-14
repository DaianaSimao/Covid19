class Summary
    include HTTParty
    base_uri 'https://corona-live-api.herokuapp.com/summary'

    def initialize
        @options2 = {}
    end

    def general2
        self.class.get('/', @options2)
    end

    def data2
        self.class.get('/data', @options2)
    end
end
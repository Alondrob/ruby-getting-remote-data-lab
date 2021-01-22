require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class GetRequester

    attr_accessor :url 

        def initialize(url)
            @url = url
        end

        def get_response_body
            uri = URI.parse(@url)
            response = Net::HTTP.get_response(uri) #specify that this is a get request
            response.body
        end

        def parse_json
            converted_data = JSON.parse(self.get_response_body)
        end


end

# URL = 'https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json'
# get_requester = GetRequester.new(URL)
# p get_requester.get_response_body
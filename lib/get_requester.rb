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
            
            # binding.pry
        end


end

URL = 'https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json'
get_requester = GetRequester.new(URL)
p get_requester.get_response_body
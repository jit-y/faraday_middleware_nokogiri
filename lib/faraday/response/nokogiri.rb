require 'faraday'
require 'nokogiri'

module Faraday
  class Response
    class Nokogiri < Middleware
      def parse(body)
        Nokogiri::XML(body)
      end
    end
    register_middleware nokogiri: Nokogiri
  end
end

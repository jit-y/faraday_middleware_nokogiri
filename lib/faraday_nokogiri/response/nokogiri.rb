require 'faraday'
require 'nokogiri'

module FaradayNokogiri
  module Response
    class Nokogiri < Faraday::Response::Middleware
      attr_reader :options
      def initialize(app, **options)
        super(app)
        @options = options
      end

      def parse(body)
        Nokogiri::XML(body)
      end
    end
  end
end

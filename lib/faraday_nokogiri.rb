require 'faraday'
require 'faraday_nokogiri/version'
require 'faraday_nokogiri/response/xml'

Faraday::Response.register_middleware nokogiri: FaradayNokogiri::Response::XML

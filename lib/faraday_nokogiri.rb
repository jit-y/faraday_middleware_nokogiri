require 'faraday'
require 'faraday_nokogiri/version'
require 'faraday_nokogiri/response/nokogiri'

Faraday::Response.register_middleware nokogiri: FaradayNokogiri::Response::Nokogiri

require 'httparty'

module TotalVoice
  class Base
    include HTTParty
    base_uri 'https://api2.totalvoice.com.br'

    def initialize
      self.class.headers 'Accept' => 'application/json', 'Content-Type' => 'application/json', 'Access-Token' => TotalVoice::Config.access_token
    end
  end
end

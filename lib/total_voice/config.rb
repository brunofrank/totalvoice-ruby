module TotalVoice
  class Config
    @@access_token = nil
    
    def self.access_token
      @@access_token ? @@access_token : ENV['TOTAL_VOICE_ACCESS_TOKEN']
    end

    def self.access_token=(token)
      @@access_token = token
    end
  end
end

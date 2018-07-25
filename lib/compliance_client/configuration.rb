module ComplianceClient
  class Configuration 
    attr_accessor :base_url, :api_token

    def initialize
      @base_url = nil
      @api_token = nil
    end 
  end
end

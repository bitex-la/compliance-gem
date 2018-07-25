require 'faraday'
module ComplianceClient
  class Request < Faraday::Middleware
    def call(env)
      env[:request_headers]["Content-Type"] =
        "application/vnd.api+json"
      env[:request_headers]["Accept"] =
        "application/vnd.api+json"
      env[:request_headers]["Authorization"] =
        "Token token=#{ComplianceClient.configuration.api_token}"
      @app.call(env)
    end
  end
end
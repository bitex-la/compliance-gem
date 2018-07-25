module ComplianceClient
  module Gardenable
    extend ActiveSupport::Concern
    included do
      self.query_builder = ComplianceClient::ApiQueryBuilder
      access_belongs_to :person
    end
  end
end
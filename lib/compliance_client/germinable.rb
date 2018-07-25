module ComplianceClient
  module Germinable
    extend ActiveSupport::Concern
    included do
      self.query_builder = ComplianceClient::ApiQueryBuilder
      access_belongs_to :person
      access_belongs_to :issue
    end
  end
end
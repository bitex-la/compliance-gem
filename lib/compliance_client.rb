require "compliance_client/version"
require "compliance_client/configuration"
require "compliance_client/relationship_manager"
require "compliance_client/request"
require "compliance_client/base"
require "compliance_client/person"
require "compliance_client/issue"
require "compliance_client/api_query_builder"
require "compliance_client/gardenable"
require "compliance_client/germinable"
require "compliance_client/affinity"
require "compliance_client/allowance"
require "compliance_client/argentina_invoicing_detail"
require "compliance_client/chile_invoicing_detail"
require "compliance_client/domicile"
require "compliance_client/email"
require "compliance_client/fund_deposit"
require "compliance_client/identification"
require "compliance_client/legal_entity_docket"
require "compliance_client/natural_docket"
require "compliance_client/note"
require "compliance_client/risk_score"

module ComplianceClient
  class << self 
    attr_accessor :configuration 
  end 

  def self.configuration 
    @configuration ||= Configuration.new
  end

  def self.reset 
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end

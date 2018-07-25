module ComplianceClient
  class RiskScore < Base 
    include Gardenable
    access_attributes :score, :provider, 
      :extra_info, :external_link
  end
end
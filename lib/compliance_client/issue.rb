module ComplianceClient
  class Issue < Base
    belongs_to :person
    access_attributes :state
  end
end
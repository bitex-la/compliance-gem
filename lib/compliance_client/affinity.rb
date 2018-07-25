module ComplianceClient
  class Affinity < Base
    include Gardenable
    access_attributes :affinity_kind
  end
end
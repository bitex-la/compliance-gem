module ComplianceClient
  class Identification < Base
    include Gardenable
    access_attributes :issuer, :identification_kind, :number
  end
end
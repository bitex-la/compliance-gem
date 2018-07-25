module ComplianceClient
  class Email < Base
    include Gardenable

    access_attributes :address, :email_kind
  end
end
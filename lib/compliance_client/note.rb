module ComplianceClient
  class Note < Base
    include Gardenable

    access_attributes :title, :body
  end
end
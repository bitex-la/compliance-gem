module ComplianceClient
  class Domicile < Base
    include Gardenable

    access_attributes :country, :city, :street_address,
      :street_number, :floor, :postal_code
  end
end
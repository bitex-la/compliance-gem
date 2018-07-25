module ComplianceClient
  class ChileInvoicingDetail < Base
    include Gardenable

    access_attributes :vat_status, :tax_id, :ciudad,
      :comuna, :giro
  end
end
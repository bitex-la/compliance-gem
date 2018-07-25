module ComplianceClient
  class ArgentinaInvoicingDetail < Base
    include Gardenable

    access_attributes :vat_status, :tax_id, :country,
      :name, :address, :tax_id_kind, :receipt_kind
  end
end
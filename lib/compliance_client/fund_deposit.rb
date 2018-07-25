module ComplianceClient
  class FundDeposit < Base
    include Gardenable 
    access_attributes :amount, :currency, 
      :deposit_method, :external_id
  end
end 
module ComplianceClient
  class NaturalDocket < Base
    include Gardenable

    access_attributes :first_name, :last_name, :nationality, :gender,
      :marital_status, :job_title, :job_description, :birth_date,
      :politically_exposed, :politically_exposed_reason,
      :created_at, :updated_at
  end
end
json.extract! contract, :id, :amount_cents, :start_date, :subproject_id, :contractor_id, :created_at, :updated_at
json.url contract_url(contract, format: :json)
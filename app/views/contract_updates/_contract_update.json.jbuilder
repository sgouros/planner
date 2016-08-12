json.extract! contract_update, :id, :update_version, :amount, :start_date, :comments, :contract_id, :created_at, :updated_at
json.url contract_update_url(contract_update, format: :json)
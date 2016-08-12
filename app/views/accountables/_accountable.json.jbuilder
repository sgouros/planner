json.extract! accountable, :id, :surname, :name, :phone, :fax, :email, :organisation_id, :created_at, :updated_at
json.url accountable_url(accountable, format: :json)
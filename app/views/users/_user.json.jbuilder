json.extract! user, :id, :surname, :phone, :email, :hashed_password, :admin, :organisation_id, :manager, :normalized_name, :normalized_surname, :created_at, :updated_at
json.url user_url(user, format: :json)
json.extract! payment, :id, :code, :amount, :transaction_date, :payment_type_code, :invoice_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
json.extract! crypto_portfolio, :id, :symbol, :user_id, :cost_per, :amount_owned, :created_at, :updated_at
json.url crypto_portfolio_url(crypto_portfolio, format: :json)

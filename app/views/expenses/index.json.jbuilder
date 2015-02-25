json.array!(@expenses) do |expense|
  json.extract! expense, :id, :fecha, :concept, :amount, :category_id
  json.url expense_url(expense, format: :json)
end

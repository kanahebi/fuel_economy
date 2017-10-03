json.extract! refuel, :id, :gasoline, :distance, :price
json.refuel_date simple_time(refuel.refuel_date)
json.created_at simple_time(refuel.created_at)
json.updated_at simple_time(refuel.updated_at)
json.url refuel_url(refuel, format: :json)
json.fuel_economy refuel.distance.to_f / refuel.gasoline.to_f

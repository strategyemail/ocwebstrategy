json.array!(@craigslists) do |craigslist|
  json.extract! craigslist, :id
  json.url craigslist_url(craigslist, format: :json)
end

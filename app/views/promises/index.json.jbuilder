json.array!(@promises) do |promise|
  json.extract! promise, :id, :party_id, :content
  json.url promise_url(promise, format: :json)
end

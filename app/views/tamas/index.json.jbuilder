json.array!(@tamas) do |tama|
  json.extract! tama, :id
  json.url tama_url(tama, format: :json)
end

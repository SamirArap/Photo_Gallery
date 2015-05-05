json.array!(@pictures) do |picture|
  json.extract! picture, :id, :title, :cycle, :price
  json.url picture_url(picture, format: :json)
end

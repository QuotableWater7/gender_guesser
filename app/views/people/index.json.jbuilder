json.array!(@people) do |person|
  json.extract! person, :gender, :height, :weight
  json.url person_url(person, format: :json)
end

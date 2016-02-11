json.array!(@lists) do |list|
  json.extract! list, :id, :name, :description, :id_parent
  json.url list_url(list, format: :json)
end

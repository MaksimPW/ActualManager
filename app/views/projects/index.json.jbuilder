json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :id_parent
  json.url project_url(project, format: :json)
end

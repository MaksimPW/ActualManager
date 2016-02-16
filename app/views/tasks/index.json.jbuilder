json.array!(@tasks) do |task|
  json.extract! task, :id, :status, :name, :description, :goal_time, :duration_time, :list_id
  json.url task_url(task, format: :json)
end

json.extract! task, :id, :name, :created_at, :updated_at, :status_id
json.url task_url(task, format: :json)

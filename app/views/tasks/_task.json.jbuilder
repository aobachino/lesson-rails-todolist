json.extract! task, :id, :name, :status, :created_at, :updated_at, :status_id
json.url task_url(task, format: :json)

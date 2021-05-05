json.extract! recipes_list_todo_item, :id, :description, :completed, :completed_at, :recipes_list_id, :created_at, :updated_at
json.url recipes_list_todo_item_url(recipes_list_todo_item, format: :json)
